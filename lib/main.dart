import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rescue_time/constants/colors.dart';
import 'package:rescue_time/data/emergency_data.dart';
import 'package:rescue_time/firebase_options.dart';
import 'package:rescue_time/model/emergency_data_model.dart';
import 'package:rescue_time/screens/splash_screen.dart';

List<Emergencies> listEmergencies = [];
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  for (var element in emergencyData["mergencys"]) {
    listEmergencies.add(Emergencies.fromJson(element));
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: white,
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Rescue Time',
      home: const SplashScreen(),
    );
  }
}
