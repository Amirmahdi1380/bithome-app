import 'package:amlak_app/screens/login/login_screen.dart';
import 'package:amlak_app/screens/sign_up/sign_up_scree.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'SM'),
      home: LoginScreen(),
    );
  }
}
