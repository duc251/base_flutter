import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  Preferences._internal();

  static final _instance = Preferences._internal();

  factory Preferences() => _instance;

  static Future<T?> get<T>(String key, Function mapper) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    try {
      final value = sharedPreferences.getString(key);
      if (value == null) return null;
      return mapper(value);
    } on Exception {
      return null;
    }
  }

  static Future<bool?> getBool(String key) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(key);
  }

  static Future<int?> getInt(String key) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getInt(key);
  }

  static Future<double?> getDouble(String key) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getDouble(key);
  }

  static Future<String?> getString(String key) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(key);
  }

  static Future<List<String>?> getStringList(String key) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getStringList(key);
  }

  static Future<Object?> getObject(String key) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.get(key);
  }

  static Future<bool> set<T>(String key, T entity, [Function? mapper]) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String value = mapper != null ? mapper(entity) : entity.toString();
    return await sharedPreferences.setString(key, value);
  }

  static Future<bool> setBool(String key, bool value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.setBool(key, value);
  }

  static Future<bool> setInt(String key, int value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.setInt(key, value);
  }

  static Future<bool> setDouble(String key, double value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.setDouble(key, value);
  }

  static Future<bool> setString(String key, String value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.setString(key, value);
  }

  static Future<bool> setStringList(String key, List<String> value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.setStringList(key, value);
  }

  static Future<bool> contains(String key) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.containsKey(key);
  }

  static Future<bool> remove(String key) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.remove(key);
  }

  static Future<bool> clear() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.clear();
  }
}
