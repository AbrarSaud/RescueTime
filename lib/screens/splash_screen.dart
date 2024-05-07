import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:rescue_time/screens/auth/auth_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedSplashScreen(
          duration: 500,
          splash: Container(
            margin: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                ),
              ],
            ),
          ),
          nextScreen: const AuthScreen(),
          splashTransition: SplashTransition.scaleTransition,
          splashIconSize: 500,
        ),
      ),
    );
  }
}
