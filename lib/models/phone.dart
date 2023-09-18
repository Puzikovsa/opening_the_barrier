import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Phone extends ChangeNotifier {
  static String? accessNumber;

  final preferences = SharedPreferences.getInstance();
  final String key = 'key';

  Future<void> addNumber(String number) async {
    final prefs = await preferences;
    prefs.clear();
    prefs.setString(key, number);
    accessNumber = number;
    notifyListeners();
  }

  Future<void> changeNumber() async {
    final prefs = await preferences;
    accessNumber = prefs.getString(key);
  }

  String? getNumber() {
    return accessNumber;
  }
}
