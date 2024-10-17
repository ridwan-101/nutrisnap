import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nutrisnap/core/shared/asset.dart';
import 'package:nutrisnap/core/utils/colors.dart';
import 'package:nutrisnap/features/Onboarding/onboarding_1.dart';
//import 'package:nutrisnap/features/auth/singin.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  static const routeName = '/splash';
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {
  SharedPreferences? prefs;
  bool isLightMode = false;
  bool isDarkMode = false;
  @override
  void initState() {
    super.initState();

    // late Animation<Offset> animationIcon;
    // Add a delay of 2 seconds before navigating to the next screen
    Timer(
      const Duration(seconds: 5),
      () => Navigator.pushReplacementNamed(context, Onboarding1.routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor.white,
      body: Center(
        child: Container(child: Image.asset(klogo)),
      ),
    );
  }
}
