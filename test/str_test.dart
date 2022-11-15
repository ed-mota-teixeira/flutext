import 'package:flutext/process/actions/calculate_hash.dart';
import 'package:flutext/process/actions/convert_diacritics.dart';
import 'package:flutext/process/actions/only_numbers.dart';
import 'package:flutext/process/actions/remove_digits.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const testString = 'Hello there. 1 this should be title cased... 3right? hum...!?. CalÇado#y-!';

  group('Executioner methods', () {
    test('Remove all numbers', () {
      final RemoveDigits tCase = RemoveDigits();
      final String r = tCase.executeAction(testString);
      expect(r, 'Hello there.  this should be title cased... right? hum...!?. CalÇado#y-!');
    });

    test('Keep only numbers', () {
      final OnlyNumbers tCase = OnlyNumbers();
      final String r = tCase.executeAction(testString);
      expect(r, '13');
    });

    test('Remove diacritic characters', () {
      final ConvertDiacritics tCase = ConvertDiacritics();
      final String r = tCase.executeAction(testString);
      expect(r, 'Hello there. 1 this should be title cased... 3right? hum...!?. CalCado#y-!');
    });

    test('Calculate hash SHA1', () {
      final CalculateSHA1 tCase = CalculateSHA1();
      final String r = tCase.executeAction(testString);
      expect(r, '1dd6caf5775d4e0573a1dc5cb8cb6549a1ea6524');
    });

    test('Calculate hash SHA256', () {
      final CalculateSHA256 tCase = CalculateSHA256();
      final String r = tCase.executeAction(testString);
      expect(r, 'd736bc9ff8ae9ef93d82bf88f62348e4d9f0f6ed5b431f8d251d3aceefb3a067');
    });

    test('Calculate hash SHA512', () {
      final CalculateSHA512 tCase = CalculateSHA512();
      final String r = tCase.executeAction(testString);
      expect(r, '324dcca66556a3d5b60619aac803b9580f96b38a8cfd27201e2db29841c9a635dbd0d5bf2786351651029bc1ab4242d044ba8fcde1af522aab867f59d2d82da2');
    });
  });
}
