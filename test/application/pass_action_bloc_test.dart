import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:passvera/application/passActionBloc/pass_action_bloc.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/domain/errors/storage_failures.dart';

import 'fakes.dart';

void main() {
  test('rejects an update with an empty name without touching storage',
      () async {
    final repository = FakeKeysRepository();
    final bloc = PassActionBloc(repository);

    bloc.add(
      const PassActionEvent.updatePass(
        pass: ApplicationModel(key: '   ', value: 'secret'),
        oldKey: 'Gmail',
      ),
    );
    await Future<void>.delayed(Duration.zero);

    expect(repository.updateCalls, isEmpty);
    expect(
      bloc.state.updateFailureOrSucces,
      some(const Left<StorageFailure, Unit>(StorageFailure.emptyKey())),
    );
  });

  test('reports the same failure twice in a row', () async {
    final repository = FakeKeysRepository()
      ..updateResult = const Left(StorageFailure.keyAlreadyUsed());
    final bloc = PassActionBloc(repository);
    final results = <Option<Either<StorageFailure, Unit>>>[];
    final sub = bloc.stream
        .map((s) => s.updateFailureOrSucces)
        .where((o) => o.isSome())
        .listen(results.add);

    const event = PassActionEvent.updatePass(
      pass: ApplicationModel(key: 'Twitter', value: 'secret'),
      oldKey: 'Gmail',
    );
    bloc.add(event);
    await Future<void>.delayed(Duration.zero);
    bloc.add(event);
    await Future<void>.delayed(Duration.zero);
    await sub.cancel();

    expect(results, hasLength(2));
  });
}
