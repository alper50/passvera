import 'package:flutter_test/flutter_test.dart';
import 'package:passvera/application/homeBloc/home_bloc.dart';
import 'package:passvera/domain/application_model.dart';

import 'fakes.dart';

void main() {
  const bank = ApplicationModel(key: 'Bank', value: 'x', tag: 'Finance');
  const jira = ApplicationModel(key: 'Jira', value: 'x', tag: 'Work');
  const vpn = ApplicationModel(key: 'VPN', value: 'x', tag: 'work');

  late FakeKeysRepository repository;
  late HomeBloc bloc;

  Future<void> send(HomeEvent event) async {
    bloc.add(event);
    await Future<void>.delayed(Duration.zero);
  }

  T success<T>(
      T Function(List<ApplicationModel> values, List<String> tags,
              String? selectedTag)
          read) {
    return bloc.state.maybeMap(
      loadSucces: (s) => read(s.values, s.tags, s.selectedTag),
      orElse: () => throw StateError('not loaded: ${bloc.state}'),
    );
  }

  setUp(() async {
    repository = FakeKeysRepository()..storedValues = const [bank, jira, vpn];
    bloc = HomeBloc(repository);
    await send(const HomeEvent.getAllValues());
  });

  test('groups tags case-insensitively and shows everything by default', () {
    expect(success((_, tags, __) => tags), ['Finance', 'Work']);
    expect(success((_, __, selected) => selected), isNull);
    expect(success((values, _, __) => values), [bank, jira, vpn]);
  });

  test('selecting a tag filters the list, case-insensitively', () async {
    await send(const HomeEvent.tagSelected('Work'));

    expect(success((_, __, selected) => selected), 'Work');
    expect(success((values, _, __) => values), [jira, vpn]);
  });

  test('selecting the active tag again clears the filter', () async {
    await send(const HomeEvent.tagSelected('Work'));
    await send(const HomeEvent.tagSelected('Work'));

    expect(success((_, __, selected) => selected), isNull);
    expect(success((values, _, __) => values), hasLength(3));
  });

  test('reload keeps the selected tag', () async {
    await send(const HomeEvent.tagSelected('Finance'));
    await send(const HomeEvent.getAllValues());

    expect(success((_, __, selected) => selected), 'Finance');
    expect(success((values, _, __) => values), [bank]);
  });

  test('drops the filter when its tag no longer exists after reload', () async {
    await send(const HomeEvent.tagSelected('Finance'));
    repository.storedValues = const [jira, vpn];
    await send(const HomeEvent.getAllValues());

    expect(success((_, __, selected) => selected), isNull);
    expect(success((values, _, __) => values), [jira, vpn]);
  });
}
