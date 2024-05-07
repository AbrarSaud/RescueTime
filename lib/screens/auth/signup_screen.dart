import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rescue_time/components/button_widget.dart';
import 'package:rescue_time/components/text_field_widget.dart';
import 'package:rescue_time/components/text_widget.dart';
import 'package:rescue_time/constants/colors.dart';
import 'package:rescue_time/constants/spaces.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  TextEditingController _heightController = TextEditingController();
  TextEditingController _weightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                trVSpace64,
                const TextWidget(
                  text: 'Create your account',
                  size: 30,
                  isBold: true,
                  color: primary,
                ),
                trVSpace24,
                TextFieldWidget(
                  controller: _nameController,
                  hintText: 'Enter Name',
                  icon: Icon(
                    Icons.person,
                    color: primary,
                  ),
                  label: 'Name',
                ),
                TextFieldWidget(
                  controller: _emailController,
                  hintText: 'Enter Email',
                  icon: Icon(
                    Icons.email,
                    color: primary,
                  ),
                  label: 'Email',
                ),
                TextFieldWidget(
                  controller: _passwordController,
                  hintText: 'Enter Password',
                  icon: Icon(
                    Icons.lock,
                    color: primary,
                  ),
                  label: 'Password',
                ),
                TextFieldWidget(
                  controller: _confirmPasswordController,
                  hintText: 'Confirm Password',
                  icon: Icon(
                    Icons.lock,
                    color: primary,
                  ),
                  label: 'Password',
                ),
                TextFieldWidget(
                  controller: _heightController,
                  hintText: 'Enter Height (cm)',
                  icon: Icon(
                    Icons.height,
                    color: primary,
                  ),
                  label: 'Height (cm)',
                ),
                TextFieldWidget(
                  controller: _weightController,
                  hintText: 'Enter Weight (kg)',
                  icon: Icon(
                    Icons.line_weight,
                    color: primary,
                  ),
                  label: 'Weight (kg)',
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ButtonWidget(
                    text: 'Sign Up',
                    isBorderSide: false,
                    isPrimaryColor: true,
                    onPress: () {
                      signUpWithEmailAndPassword();
                    },
                    color: white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void signUpWithEmailAndPassword() async {
    void displayMessage(String message) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(message),
          );
        },
      );
    }

    String name = _nameController.text.toString();
    String email = _emailController.text.toString();
    String password = _passwordController.text.toString();
    String confirmPassword = _confirmPasswordController.text.toString();
    String height = _heightController.text.toString();
    String weight = _weightController.text.toString();
    if (password != confirmPassword) {
      // Navigator.pop(context);
      displayMessage("Passwords do not match!");
      return;
    }

    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      storeAdditionalUserData(name, height, weight);
    } on FirebaseAuthException catch (e) {
      print('Signup failed: $e');

      // Navigator.pop(context);
      displayMessage("Signup failed: ${e.code}");
      return;
    }
  }

  // Function to store additional user data
  void storeAdditionalUserData(String name, String height, String weight) {
    // Here you can implement your logic to store the additional user data in your database
    // For example, you can use Firebase Firestore or Realtime Database to store this data
  }
}

class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Screen'),
      ),
      body: Center(
        child: Text('Welcome to the next screen!'),
      ),
    );
  }
}
