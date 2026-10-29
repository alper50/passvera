import 'package:flutter_test/flutter_test.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/domain/tag_order.dart';

void main() {
  test('without a saved order tags are alphabetical', () {
    expect(
      TagOrder.arrange(['Work', 'finance', 'General'], const []),
      ['finance', 'General', 'Work'],
    );
  });

  test('follows the saved order case-insensitively', () {
    expect(
      TagOrder.arrange(['Finance', 'General', 'Work'], ['work', 'FINANCE']),
      ['Work', 'Finance', 'General'],
    );
  });

  test('new tags go last, alphabetically; stale saved tags are ignored', () {
    expect(
      TagOrder.arrange(
        ['Social', 'Work', 'Finance', 'Crypto'],
        ['Work', 'Deleted', 'Finance'],
      ),
      ['Work', 'Finance', 'Crypto', 'Social'],
    );
  });

  test('entries follow the tag order, then their name', () {
    const vpn = ApplicationModel(key: 'vpn', value: 'x', tag: 'Work');
    const jira = ApplicationModel(key: 'Jira', value: 'x', tag: 'work');
    const bank = ApplicationModel(key: 'Bank', value: 'x', tag: 'Finance');
    expect(
      TagOrder.sortEntries(const [bank, vpn, jira], ['Work', 'Finance']),
      [jira, vpn, bank],
    );
  });

  test('merge keeps the first order and appends what is new', () {
    expect(
      TagOrder.merge(['Work', 'Finance'], ['social', 'finance', 'Work']),
      ['Work', 'Finance', 'social'],
    );
  });
}
