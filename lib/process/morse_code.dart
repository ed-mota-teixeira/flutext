import 'package:flutext/process/diacritics.dart';

extension MorseCode on String {
  /*
  Letters are separated by spaces and words by "/".
  The text translation will appear in the bottom box.
  If a letter cannot be translated a "#" will appear in the output.
  */
  static const morseChart = {
    "A": ".-",
    "B": "-...",
    "C": "-.-.",
    "D": "-..",
    "E": ".",
    "F": "..-.",
    "G": "--.",
    "H": "....",
    "I": "..",
    "J": ".---",
    "K": "-.-",
    "L": ".-..",
    "M": "--",
    "N": "-.",
    "O": "---",
    "P": ".--.",
    "Q": "--.-",
    "R": ".-.",
    "S": "...",
    "T": "-",
    "U": "..-",
    "V": "...-",
    "W": ".--",
    "X": "-..-",
    "Y": "-.--",
    "Z": "--..",
    "1": ".----",
    "2": "..---",
    "3": "...--",
    "4": "....-",
    "5": ".....",
    "6": "-....",
    "7": "--...",
    "8": "---..",
    "9": "----.",
    "0": "-----",
    ",": "--..--",
    "?": "..--..",
    ":": "---...",
    "&": ".-...",
  };

  /// Decode morse code
  String get fromMorseCode {
    int j = 0;
    String decoded = "";

    var mCode = split(" ");
    for (; j < mCode.length; j++) {
      if (mCode[j] == "/") {
        decoded += " ";
      } else {
        int idx = morseChart.values.toList().indexOf(mCode[j]);
        if (idx != -1) decoded += morseChart.keys.toList()[idx];
      }
    }
    return decoded;
  }

  /// encode to morse code
  String get toMorseCode {
    int i = 0;
    String morseCode = "";
    var all = toUpperCase().split("");
    var chartKeys = morseChart.keys.toList();
    for (; i < all.length; i++) {
      if (all[i] == " ") {
        morseCode += "/ ";
      } else {
        int idx = chartKeys.indexOf(all[i]);
        idx > -1 ? morseCode += ("${morseChart.values.elementAt(idx)} ") : morseCode += "#";
      }
    }

    return morseCode;
  }
}
