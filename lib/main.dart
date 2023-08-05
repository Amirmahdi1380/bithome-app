import 'package:amlak_app/screens/login/login_screen.dart';
import 'package:amlak_app/screens/sign_up/sign_up_scree.dart';
import 'package:amlak_app/screens/tab%20bar/tab_bar_screen.dart';
import 'package:flutter/material.dart';

import 'di/di.dart';

void main() async{
    WidgetsFlutterBinding.ensureInitialized();
  await getItInit();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'SM'),
      home: TabBarScreen(),
    );
  }
}
