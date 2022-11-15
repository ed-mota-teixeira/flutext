import 'package:flutext/process/executioner.dart';
import 'package:flutext/process/hashing.dart';

class CalculateSHA1 extends Executioner {
  @override
  String executeAction(String s) {
    if (s.isEmpty) return s;
    return s.sha1;
  }
}

class CalculateSHA256 extends Executioner {
  @override
  String executeAction(String s) {
    if (s.isEmpty) return s;
    return s.sha256;
  }
}

class CalculateSHA512 extends Executioner {
  @override
  String executeAction(String s) {
    if (s.isEmpty) return s;
    return s.sha512;
  }
}
