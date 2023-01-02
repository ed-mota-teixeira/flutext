import 'dart:convert';

import '../executioner.dart';

class PrefixSuffixPerLine extends Executioner {
  @override
  String executeAction(String s) {
    if (s.trim().isEmpty) return s;

    StringBuffer sb = StringBuffer();
    LineSplitter ls = const LineSplitter();
    List<String> lines = ls.convert(s);

    for (var element in lines) {
      sb.write("'$element'\n");
    }

    return sb.toString();
  }
}
