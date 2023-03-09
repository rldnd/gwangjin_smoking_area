import 'package:flutter/material.dart';
import 'package:gwangjin_smoking_area/auth/view/login_screen.dart';

void main() {
  runApp(const _App());
}

class _App extends StatelessWidget {
  const _App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'SpoqaHanSansNeo'),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
