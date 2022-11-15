import 'package:flutext/process/actions/calculate_hash.dart';
import 'package:flutext/process/actions/convert_diacritics.dart';
import 'package:flutext/process/actions/html5_template.dart';
import 'package:flutext/process/actions/lorem_ipsum_template.dart';
import 'package:flutext/process/actions/lowercase.dart';
import 'package:flutext/process/actions/only_numbers.dart';
import 'package:flutext/process/actions/remove_digits.dart';
import 'package:flutext/process/actions/uppercase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextCubit extends Cubit<String> {
  TextCubit() : super('');

  void setText(String s) => emit(s);

  void toLower() => emit(Lowercase().executeAction(state));

  void toUpper() => emit(Uppercase().executeAction(state));

  void inHTML5Template() => emit(Html5Template().executeAction(state));

  void removeDigits() => emit(RemoveDigits().executeAction(state));

  void removeAlphabet() => emit(OnlyNumbers().executeAction(state));

  void convertDiacritics() => emit(ConvertDiacritics().executeAction(state));

  void calculateHash1() => emit(CalculateSHA1().executeAction(state));

  void calculateHash256() => emit(CalculateSHA256().executeAction(state));

  void calculateHash512() => emit(CalculateSHA512().executeAction(state));

  void loremIpsum() => emit(LoremIpsumTemplate().executeAction(state));
}
