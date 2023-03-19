import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'LoginPage.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        duration: 1000,
          splash: Text("Medicare",style: TextStyle(
            fontSize: 35.sp ,
            fontWeight: FontWeight.w800,
            color: Colors.teal,
            fontFamily: "Serif"
          )),
          animationDuration: Duration(seconds: 1),
          splashTransition: SplashTransition.fadeTransition,
          nextScreen: Login_Page()),
    );
  }
}
