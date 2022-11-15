// import 'package:isar/isar.dart';

class AppData {
  AppData._internal();

  static final AppData _appData = AppData._internal();

  factory AppData() => _appData;

  String text = '';
}
