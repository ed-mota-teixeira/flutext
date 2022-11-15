import 'package:flutext/process/executioner.dart';

class Lowercase extends Executioner {
  @override
  String executeAction(String s) {
    if (s.isEmpty) return s;
    return s.toLowerCase();
  }
}
