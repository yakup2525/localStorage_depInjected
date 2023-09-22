import 'package:shared_preferences/shared_preferences.dart';

abstract class ISharedPreferencesManager {
  Future<SharedPreferencesManager> init();

  Future<bool> saveIntValue(String key, int value);

  int? getIntValue(String key);

  Future<bool> saveStringValue(String key, String value);

  String? getStringValue(String key);

  Future<bool> saveBoolValue(String key, bool value);

  bool? getBoolValue(String key);

  Future<bool> saveDoubleValue(String key, double value);

  double? getDoubleValue(String key);

  Set<String> getKeys();

  Future<bool> removeValue(String key);

  bool containsKey(String key);

  Future<void> removeContainsValue(String key);

  Future<bool> clear();
}

final class SharedPreferencesManager extends ISharedPreferencesManager {
  late SharedPreferences _sharedPreferences;

  @override
  Future<SharedPreferencesManager> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }

  @override
  Future<bool> saveIntValue(String key, int value) async =>
      await _sharedPreferences.setInt(key, value);

  @override
  int? getIntValue(String key) {
    return _sharedPreferences.getInt(key);
  }

  @override
  Future<bool> saveStringValue(String key, String value) async =>
      await _sharedPreferences.setString(key, value);

  @override
  String? getStringValue(String key) {
    final value = _sharedPreferences.getString(key);
    return (value == null) ? null : value;
  }

  @override
  Future<bool> saveBoolValue(String key, bool value) async =>
      await _sharedPreferences.setBool(key, value);

  @override
  bool? getBoolValue(String key) {
    return _sharedPreferences.getBool(key);
  }

  @override
  Future<bool> saveDoubleValue(String key, double value) async =>
      await _sharedPreferences.setDouble(key, value);

  @override
  double? getDoubleValue(String key) {
    return _sharedPreferences.getDouble(key);
  }

  @override
  Future<bool> removeValue(String key) async =>
      await _sharedPreferences.remove(key);

  @override
  bool containsKey(String key) => _sharedPreferences.containsKey(key);

  @override
  Future<void> removeContainsValue(String key) async {
    final keys = getKeys();

    for (var item in keys) {
      if (item.contains(key)) {
        await removeValue(key);
      }
    }
  }

  @override
  Set<String> getKeys() => _sharedPreferences.getKeys();

  @override
  Future<bool> clear() async {
    return await _sharedPreferences.clear();
  }
}
