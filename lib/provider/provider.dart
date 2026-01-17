import 'package:flutter/material.dart';
import 'package:first_app/model/user.dart';

class UserProvider extends ChangeNotifier {
  User? _user;

  User? get user => _user;

  bool get isLoggedIn => _user != null;

  // 認証後に呼ぶ
  void setUser(User user) {
    _user = user;
    notifyListeners(); // ← これが超重要
  }

  // ログアウト時
  void clearUser() {
    _user = null;
    notifyListeners();
  }
}
