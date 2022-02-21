import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mm_school/home_screen.dart';
import 'package:mm_school/styles/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    const delay = const Duration(seconds: 3);
    Future.delayed(delay, () => onTimerFinished());
  }

  void onTimerFinished() {
    Navigator.of(context).pushReplacement( new MaterialPageRoute(
      builder: (BuildContext context) {
        return HomeScreen();
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Text(splashScreenIcon()),
      ),
    );
  }
}

String splashScreenIcon() {
  String iconPath = "assets/banner_image.jpeg";
  return iconPath;
}
