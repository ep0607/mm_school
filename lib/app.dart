import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'package:mm_school/styles/theme.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData,
      home: SplashScreen(),
    );
  }
}
