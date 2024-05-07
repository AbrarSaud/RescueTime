import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rescue_time/screens/home_screen.dart';
import 'package:rescue_time/screens/welcome_screen.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            //if user is logged
            if (snapshot.hasData) {
              return const HomeScreen();
            }
            // if user is Not logged
            else {
              return const WelcomeScreen();
            }
          }),
    );
  }
}
