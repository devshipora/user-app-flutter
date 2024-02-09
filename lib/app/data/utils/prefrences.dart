import 'package:get_storage/get_storage.dart';

class Prefrences {
  final pref = GetStorage("MyPrefs");

  Future<void> setToken(String token) async {
    await pref.write("token", token);
  }

  Future<String> getToken() async {
    return pref.read("token");
  }

  Future<void> setUserId(int userId) async {
    await pref.write("userId", userId);
  }

  Future<int> getUserId() async {
    return pref.read("userId");
  }

  Future<void> setUserName(String userName) async {
    await pref.write("userName", userName);
  }

  Future<String> getUserName() async {
    return pref.read("userName");
  }

  Future<void> setEmail(String email) async {
    await pref.write("email", email);
  }

  Future<String> getEmail() async {
    return pref.read("email");
  }

  Future<void> setMobileNumber(String mobileNumber) async {
    await pref.write("mobileNumber", mobileNumber);
  }

  Future<String> getMobileNumber() async {
    return pref.read("mobileNumber");
  }

  Future<void> setCountryCode(String countryCode) async {
    await pref.write("countryCode", countryCode);
  }

  Future<String> getCountryCode() async {
    return pref.read("countryCode");
  }
}
