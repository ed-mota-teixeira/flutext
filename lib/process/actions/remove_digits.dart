import 'package:flutext/process/executioner.dart';

class RemoveDigits extends Executioner {
  @override
  String executeAction(String s) {
    return s.replaceAll(RegExp(r"\d"), "");
  }
}
