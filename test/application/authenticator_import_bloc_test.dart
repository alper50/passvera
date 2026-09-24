import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:passvera/application/authenticatorImportBloc/authenticator_import_bloc.dart';
import 'package:passvera/domain/authenticator_entry.dart';
import 'package:passvera/domain/errors/authenticator_failures.dart';

import '../domain/migration_payload_builder.dart';
import 'fakes.dart';

void main() {
  const existingGithub = AuthenticatorEntry(
    id: 'totp:github%7Calice',
    issuer: 'GitHub',
    account: 'alice',
    secret: 'JBSWY3DPEHPK3PXP',
  );

  String batchQr(
    List<String> names, {
    int batchIndex = 0,
    int batchSize = 2,
    int batchId = 7,
  }) =>
      migrationUri(migrationPayload(
        [for (final n in names) otpParameters(secret: helloSecret, name: n)],
        batchIndex: batchIndex,
        batchSize: batchSize,
        batchId: batchId,
      ));

  late FakeAuthenticatorRepository repository;
  late AuthenticatorImportBloc bloc;

  Future<void> send(AuthenticatorImportEvent event) async {
    bloc.add(event);
    await Future<void>.delayed(Duration.zero);
  }

  setUp(() {
    repository = FakeAuthenticatorRepository([existingGithub]);
    bloc = AuthenticatorImportBloc(repository);
  });

  test('first scan selects new accounts and marks existing ones', () async {
    bloc
      ..add(const AuthenticatorImportEvent.started())
      ..add(AuthenticatorImportEvent.qrScanned(
        batchQr(['GitHub:alice', 'AWS:root']),
      ));
    await Future<void>.delayed(Duration.zero);

    expect(bloc.state.candidates.map((e) => e.account), ['alice', 'root']);
    expect(bloc.state.selectedIds, {'totp:aws%7Croot'});
    expect(bloc.state.scannedBatches, {0});
    expect(bloc.state.allBatchesScanned, isFalse);
  });

  test('merges further batches and ignores a repeated one', () async {
    await send(const AuthenticatorImportEvent.started());
    await send(AuthenticatorImportEvent.qrScanned(batchQr(['AWS:root'])));
    await send(AuthenticatorImportEvent.qrScanned(batchQr(['AWS:root'])));
    await send(AuthenticatorImportEvent.qrScanned(
      batchQr(['Slack:me'], batchIndex: 1),
    ));

    expect(bloc.state.candidates.map((e) => e.account), ['root', 'me']);
    expect(bloc.state.allBatchesScanned, isTrue);
  });

  test('rejects a QR from a different export', () async {
    await send(const AuthenticatorImportEvent.started());
    await send(AuthenticatorImportEvent.qrScanned(batchQr(['AWS:root'])));
    await send(AuthenticatorImportEvent.qrScanned(
      batchQr(['Other:x'], batchIndex: 1, batchId: 99),
    ));

    expect(
      bloc.state.scanFailureOrSuccess,
      some(const Left<AuthenticatorFailure, Unit>(
        AuthenticatorFailure.mismatchedBatch(),
      )),
    );
    expect(bloc.state.candidates, hasLength(1));
  });

  test('existing accounts cannot be selected', () async {
    await send(const AuthenticatorImportEvent.started());
    await send(AuthenticatorImportEvent.qrScanned(batchQr(['GitHub:alice'])));
    await send(
      const AuthenticatorImportEvent.selectionToggled('totp:github%7Calice'),
    );

    expect(bloc.state.selectedIds, isEmpty);
  });

  test('imports only the selected accounts', () async {
    await send(const AuthenticatorImportEvent.started());
    await send(AuthenticatorImportEvent.qrScanned(
      batchQr(['AWS:root', 'Slack:me'], batchSize: 1),
    ));
    await send(
      const AuthenticatorImportEvent.selectionToggled('totp:slack%7Cme'),
    );
    await send(const AuthenticatorImportEvent.importConfirmed());

    expect(repository.saved.map((e) => e.account), ['root']);
    expect(
      bloc.state.importFailureOrSuccess,
      some(const Right<AuthenticatorFailure, int>(1)),
    );
  });
}
