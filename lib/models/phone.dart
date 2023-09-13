import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Phone with ChangeNotifier{
  static String? accessNumber;

  final Future<SharedPreferences> preferences = SharedPreferences.getInstance();
  final String key = 'key';

  Future<void> addNumber(String number) async{
    final SharedPreferences prefs = await preferences;
    prefs.setString(key, number);
    accessNumber = number;
    notifyListeners();
  }
}