import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:vize/login/anamenu.dart';

class AnimasyonDeneme extends StatefulWidget {
  @override
  _AnimasyonDenemeState createState() => _AnimasyonDenemeState();
}

class _AnimasyonDenemeState extends State<AnimasyonDeneme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: Image.asset(
          'resimler/Logomuz.png',
        ),
        nextScreen: LoginPage(),
        splashTransition: SplashTransition.scaleTransition,

        backgroundColor: Colors.red,
        duration: 3000,
      ),
    );
  }
}
