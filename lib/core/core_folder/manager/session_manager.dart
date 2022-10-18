// ignore_for_file: unnecessary_null_comparison

import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';
import 'package:injectable/injectable.dart';

/// A class for managing sessions, handles saving and retrieving of data
@lazySingleton
class SharedPreferencesService {
  SharedPreferencesService._internal();

  // final _log = getLogger('SessionManager');

  SharedPreferences? sharedPreferences;

  static final SharedPreferencesService _instance =
      SharedPreferencesService._internal();

  factory SharedPreferencesService() => _instance;

  static SharedPreferencesService get instance => _instance;

  Future<void> initilize() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static const String keyAuthToken = 'auth_token';
  static const String keyAuthTokenType = 'token_type';
  static const String keyUserData = 'users_data';
  static const String keyOtp = 'otp';
  static const String logginKey = 'loggin';
  static const String addressKey = 'address_key';

  String get authTokenType =>
      sharedPreferences!.getString(keyAuthTokenType) ?? '';
  String get authToken => sharedPreferences?.getString(keyAuthToken) ?? '';

  bool get isLoggedIn => sharedPreferences?.getBool(logginKey) ?? false;

  set isLoggedIn(bool logging) =>
      sharedPreferences?.setBool(logginKey, logging);

  set authToken(String authToken) =>
      sharedPreferences?.setString(keyAuthToken, authToken);

  set authTokenType(String authTokenType) =>
      sharedPreferences?.setString(keyAuthTokenType, authTokenType);

  Map<String, dynamic> get usersData =>
      json.decode(sharedPreferences?.getString(keyUserData) ?? '');

  Map<String, dynamic> get otpData =>
      json.decode(sharedPreferences?.getString(keyOtp) ?? '');

  Map<String, dynamic> get addressData =>
      json.decode(sharedPreferences?.getString(addressKey) ?? '');

  set usersData(Map<String, dynamic>? map) =>
      sharedPreferences?.setString(keyUserData, json.encode(map));

  set otpData(Map<String, dynamic>? map) =>
      sharedPreferences?.setString(keyOtp, json.encode(map));

  set addressData(Map<String, dynamic>? map) =>
      sharedPreferences?.setString(addressKey, json.encode(map));

  Future<bool> logOut() async {
    await sharedPreferences!.clear();
    try {
      final cacheDir = await getTemporaryDirectory();
      if (cacheDir.existsSync()) {
        cacheDir.deleteSync(recursive: true);
      }
      final appDir = await getApplicationSupportDirectory();
      if (appDir.existsSync()) {
        appDir.deleteSync(recursive: true);
      }
    } catch (e) {
      // _log.e("error clearing cache");
    }
    return true;
  }
}
