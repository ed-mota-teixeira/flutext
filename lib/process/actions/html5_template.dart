import 'package:flutext/process/executioner.dart';

class Html5Template extends Executioner {
  final String _docType = '<!DOCTYPE html>';
  final String _htmlStart = '<html lang="en">';
  final String _head = '<head>\n<meta charset="UTF-8">\n'
      '<meta name="viewport" content="width=device-width, initial-scale=1.0">\n'
      '<meta http-equiv="X-UA-Compatible" content="ie=edge">\n'
      '<title>Your title</title>\n'
      '</head>\n';
  final String _bodyStart = '<body>\n';
  final String _bodyEnd = '</body>\n';
  final String _htmlEnd = '</html>';
  final String _paragraphStart = '<p>';
  final String _paragraphEnd = '</p>\n';

  @override
  String executeAction(String s) {
    if (s.toLowerCase().contains(_docType.toLowerCase())) return s; // already used
    final toBr = s.replaceAll("\n", "<br>\n");
    return '$_docType\n$_htmlStart\n$_head$_bodyStart$_paragraphStart$toBr$_paragraphEnd$_bodyEnd$_htmlEnd';
  }
}
