import 'package:flutext/process/executioner.dart';
import 'package:flutext/process/morse_code.dart';

class ToMorse extends Executioner {
  @override
  String executeAction(String s) => s.toMorseCode;
}

class FromMorse extends Executioner {
  @override
  String executeAction(String s) => s.fromMorseCode;
}
