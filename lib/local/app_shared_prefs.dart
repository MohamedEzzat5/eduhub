import 'dart:convert';
import 'package:faculty_app/features/auth/models/user/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppSharedPreferences {
  static final AppSharedPreferences _appSharedPreferences =
      AppSharedPreferences._internal();
  factory AppSharedPreferences() => _appSharedPreferences;
  AppSharedPreferences._internal();
  SharedPreferences? _sharedPreferences;

  String? user;
  String? userToken;
  int? userId;
  String? resetPasswordToken;

  Future<void> initSharedPreferencesProp() async {
    _sharedPreferences = await SharedPreferences.getInstance();

    userToken = _sharedPreferences!.getString('token');
    userId = _sharedPreferences!.getInt('userId');
    user = _sharedPreferences!.getString('user');
    resetPasswordToken = _sharedPreferences!.getString('resetPasswordToken');
  }

  Future<void> saveUser(User? userModel) async {
    String userData = jsonEncode(userModel);
    user = userData;
    await _sharedPreferences!.setString('user', userData);
  }

  User? getUser() {
    String? userData = _sharedPreferences!.getString('user');
    if (userData != null) {
      return User.fromJson(jsonDecode(userData));
    } else {
      return null;
    }
  }

  Future<void> saveResetPasswordToken(String token) async {
    resetPasswordToken = token;
    await _sharedPreferences!.setString('resetPasswordToken', token);
  }

  String? getResetPasswordToken() {
    return _sharedPreferences!.getString('resetPasswordToken'); 
  }
  

  Future<void> removeResetPasswordToken() async {
    await _sharedPreferences!.remove('resetPasswordToken');
  }


  Future<void> saveUserToken(String token) async {
    userToken = token;
    await _sharedPreferences!.setString('token', token);
  }

  String? getUserToken() {
    return _sharedPreferences!.getString('token');
  }

  Future<void> removeUserToken() async {
    await _sharedPreferences!.remove('token');
  }

  Future<void> saveUserId(int id) async {
    userId = id;
    await _sharedPreferences!.setInt('userID', id);
  }

  void clearPrefs() {
    if (_sharedPreferences != null) {
      userToken = null;
      userId = null;
      user = null;
      resetPasswordToken = null;
    
      _sharedPreferences!.clear();
    }
  }
}
