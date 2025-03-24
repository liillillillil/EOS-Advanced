import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week02/firebase_options.dart';
import 'package:week02/screens/home_screen.dart';
import 'package:week02/screens/login_screen.dart';
import 'package:week02/service/user_service.dart';
import 'package:week02/theme/foundation/app_theme.dart';
import 'package:week02/theme/light_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
/*
  kakao.KakaoSdk.init(
    nativeAppKey: 'bdf417c6d57c09fa0095ab9191ee389f',
    javaScriptAppKey: 'fb50037e72e9b40759be77339bce13c8',
  );
*/
  runApp(
    ChangeNotifierProvider(
      create: (context) => UserService(),
      child: const MyApp(),
    ),
  );
}

/// 애플리케이션의 루트 위젯
/// - 앱의 전체 테마 및 초기 화면을 설정합니다.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final AppTheme theme = LightTheme();

    return MaterialApp(
      title: 'EOS Advance Login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: theme.color.primary),
        useMaterial3: true,
        fontFamily: 'Pretendard',
      ),
      home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const LoginScreen();
          }
          return const HomeScreen();
        },
      ),
    );
  }
}
