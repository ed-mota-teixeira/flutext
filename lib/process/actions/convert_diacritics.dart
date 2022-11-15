import 'package:flutext/process/diacritics.dart';
import 'package:flutext/process/executioner.dart';

class ConvertDiacritics extends Executioner {
  @override
  String executeAction(String s) {
    if (s.isEmpty) return s;
    return s.withoutDiacriticalMarks;
  }
}
