import 'package:shared_preferences/shared_preferences.dart';

class CachedHleper {
  static late SharedPreferences sharedPreferences;
  static Future<void> getInatial() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<void> setString(
      {required String key, required String value}) async {
    await sharedPreferences.setString(key, value);
  }

  static String? getString({required String key}) {
    return sharedPreferences.getString(key);
  }

  static Future<void> setBool(
      {required String key, required bool value}) async {
    await sharedPreferences.setBool(key, value);
  }

  static bool? getBool({required String key}) {
    return sharedPreferences.getBool(key);
  }
}
