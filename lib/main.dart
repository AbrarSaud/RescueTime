import 'package:flutter/material.dart';
import 'package:rescue_time/constants/colors.dart';
import 'package:rescue_time/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  
  MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: white, 
      ),
        debugShowCheckedModeBanner: false,
      title: 'Rescue Time',
      home: const SplashScreen(),
    );
  }
}

