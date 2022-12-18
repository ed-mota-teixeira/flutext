import 'package:flutext/process/actions/morse.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const testString1 = 'A B C';
  const testString2 = '.- / -... / -.-. ';
  const testString3 = 'A B C }';

  group('Morse methods', () {
    test('To morse code', () {
      final ToMorse m = ToMorse();
      final String r = m.executeAction(testString1);
      expect(r, '.- / -... / -.-. ');
    });

    test('From morse code', () {
      final FromMorse m = FromMorse();
      final String r = m.executeAction(testString2);
      expect(r, 'A B C');
    });

    test('To morse code', () {
      final ToMorse m = ToMorse();
      final String r = m.executeAction(testString3);
      expect(r, '.- / -... / -.-. / #');
    });
  });
}
