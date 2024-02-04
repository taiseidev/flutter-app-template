import 'package:shared_preferences/shared_preferences.dart';

import 'shared_preferences_instance.dart';

enum PreferenceKeyType {
  userId,
  isFirstLaunch,
}

extension PreferenceKeyTypeExt on PreferenceKeyType {
  SharedPreferences get _prefs => SharedPreferencesInstance().prefs;

  String get keyString => switch (this) {
        PreferenceKeyType.userId => PreferenceKeyType.userId.name,
        PreferenceKeyType.isFirstLaunch => PreferenceKeyType.isFirstLaunch.name
      };

  Future<bool> setInt(int value) async => _prefs.setInt(keyString, value);

  Future<bool> setBool({required bool value}) async =>
      _prefs.setBool(keyString, value);

  Future<bool> setDouble(double value) async =>
      _prefs.setDouble(keyString, value);

  Future<bool> setString(String value) async =>
      _prefs.setString(keyString, value);

  Future<bool> setStringList(List<String> value) async =>
      _prefs.setStringList(keyString, value);

  int? getInt({int? defaultValue}) {
    if (_prefs.containsKey(keyString)) {
      return _prefs.getInt(keyString);
    } else {
      return defaultValue;
    }
  }

  bool? getBool() {
    if (_prefs.containsKey(keyString)) {
      return _prefs.getBool(keyString);
    } else {
      return false;
    }
  }

  double? getDouble({double? defaultValue}) {
    if (_prefs.containsKey(keyString)) {
      return _prefs.getDouble(keyString);
    } else {
      return defaultValue;
    }
  }

  String? getString({String? defaultValue}) {
    if (_prefs.containsKey(keyString)) {
      return _prefs.getString(keyString);
    } else {
      return defaultValue;
    }
  }

  List<String>? getStringList({List<String>? defaultValue}) {
    if (_prefs.containsKey(keyString)) {
      return _prefs.getStringList(keyString);
    } else {
      return defaultValue;
    }
  }

  Future<void> remove() async => _prefs.remove(keyString);
}
