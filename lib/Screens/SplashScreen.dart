import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'introScreen.dart';
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: Image.network("https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/virtual/MealMonkeyLogo.png"),
        splashTransition: SplashTransition.rotationTransition,
        nextScreen:IntroScreen(),
        duration: 1800,
        splashIconSize: 150,
     ),
    );
  }
}
