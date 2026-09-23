import 'package:flutter_test/flutter_test.dart';
import 'package:passvera/application/clipboardBloc/clipboard_bloc.dart';
import 'package:passvera/domain/clipboard_constants.dart';

import 'fakes.dart';

void main() {
  test('copies with the sensitive TTL and reports every copy', () async {
    final repository = FakeClipboardRepository();
    final bloc = ClipboardBloc(repository);
    var successes = 0;
    final sub = bloc.stream
        .where((s) => s.copyFailureOrSuccess.isSome())
        .listen((_) => successes++);

    bloc.add(const ClipboardEvent.copySensitive(text: 'secret'));
    await Future<void>.delayed(Duration.zero);
    bloc.add(const ClipboardEvent.copySensitive(text: 'secret'));
    await Future<void>.delayed(Duration.zero);
    await sub.cancel();

    expect(repository.copied, ['secret', 'secret']);
    expect(repository.ttls, everyElement(kSensitiveClipboardTtl));
    expect(successes, 2);
  });
}
