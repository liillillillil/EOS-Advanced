import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:week02/theme/foundation/app_theme.dart';
import 'package:week02/theme/light_theme.dart';

class UserService extends ChangeNotifier {
  final AppTheme theme = LightTheme();
  User? _user;

  User? get user => _user;

  UserService() {
    // Firebase 인증 상태 변경 리스너 등록
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      _user = user;
      notifyListeners();
    });
  }

  set user(User? value) {
    if (_user != value) {
      _user = value;
      notifyListeners();
    }
  }
}
