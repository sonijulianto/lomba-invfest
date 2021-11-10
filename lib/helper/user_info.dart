import 'package:shared_preferences/shared_preferences.dart';

class UserInfo {
  Future setName(String value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.setString("name", value);
  }

  Future<String?> getName() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString("name");
  }

  Future logout() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.clear();
  }
}
