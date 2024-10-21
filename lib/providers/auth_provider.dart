import 'package:flutter/material.dart';
import 'package:shamo_app/models/user_model.dart';
import 'package:shamo_app/services/auth_service.dart';
import 'package:logger/logger.dart';

class AuthProvider with ChangeNotifier {
  late UserModel _user;
  final Logger _logger = Logger();

  UserModel get user => _user;

  set user(UserModel user) {
    _user = user;
    notifyListeners();
  }

  Future<bool> register({
    required String name,
    required String username,
    required String email,
    required String password,
  }) async {
    try {
      UserModel user = await AuthService().register(
        name: name,
        username: username,
        email: email,
        password: password,
      );

      _user = user;
      return true;
    } catch (e) {
      _logger.e('Registration failed: $e');
      return false;
    }
  }
}
