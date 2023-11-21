import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceInstance {
  factory SharedPreferenceInstance() => _instance;

  SharedPreferenceInstance._internal();
  static final _instance = SharedPreferenceInstance._internal();

  static late final SharedPreferences _prefs;
  SharedPreferences get prefs => _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }
}
