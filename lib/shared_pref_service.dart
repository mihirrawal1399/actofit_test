import 'package:shared_preferences/shared_preferences.dart';

class PrefService{
  Future createCache(String mobile) async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    _preferences.setString("mobile", mobile);
  }
  Future readCache(String mobile) async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    var cache = _preferences.getString("mobile");
    return cache;
  }
  Future removeCache(String mobile) async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    _preferences.remove("mobile");
  }
}