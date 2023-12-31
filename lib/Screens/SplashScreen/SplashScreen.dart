import 'dart:async';
import 'package:flutter/material.dart';

import '../OnBordingScreen/OnBordingScreen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds:2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => OnboardingScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:  [
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 200),
              child: Image(
                  height: 360,
                  width: 360,
                  image: AssetImage('images/SplashScreen.png')),
            ),
          ),
        ],
      ),
    );
  }
}