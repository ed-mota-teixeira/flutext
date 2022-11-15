import 'package:flutext/process/executioner.dart';

class OnlyNumbers extends Executioner {
  @override
  String executeAction(String s) {
    return s.replaceAll(RegExp(r"\D"), "");
  }
}
