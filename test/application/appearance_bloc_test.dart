import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:passvera/application/appearanceBloc/appearance_bloc.dart';
import 'package:passvera/domain/appearance_mode.dart';
import 'package:passvera/domain/errors/storage_failures.dart';

import 'fakes.dart';

void main() {
  late FakeAppearanceRepository repository;

  Future<void> send(AppearanceBloc bloc, AppearanceEvent event) async {
    bloc.add(event);
    await Future<void>.delayed(Duration.zero);
  }

  setUp(() => repository = FakeAppearanceRepository());

  test('starts from the mode read before the first frame', () {
    expect(AppearanceBloc(repository, AppearanceMode.dark).state.mode,
        AppearanceMode.dark);
    expect(AppearanceBloc(repository, null).state.mode, AppearanceMode.system);
  });

  test('a picked mode is applied and saved', () async {
    final bloc = AppearanceBloc(repository, AppearanceMode.system);
    await send(bloc, const AppearanceEvent.modeChanged(AppearanceMode.dark));

    expect(bloc.state.mode, AppearanceMode.dark);
    expect(repository.stored, AppearanceMode.dark);
  });

  test('a failed save puts the previous mode back', () async {
    repository.saveResult = Left(StorageFailure.unexpected(StateError('disk')));
    final bloc = AppearanceBloc(repository, AppearanceMode.light);
    await send(bloc, const AppearanceEvent.modeChanged(AppearanceMode.dark));

    expect(bloc.state.mode, AppearanceMode.light);
  });
}
