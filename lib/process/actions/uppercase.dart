import 'package:flutext/process/executioner.dart';

class Uppercase extends Executioner {
  @override
  String executeAction(String s) {
    if (s.isEmpty) return s;
    return s.toUpperCase();
  }
}
