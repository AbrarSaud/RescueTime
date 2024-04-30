import 'package:flutter/material.dart';
import 'package:rescue_time/components/text_widget.dart';
import 'package:rescue_time/constants/colors.dart';
import 'package:rescue_time/constants/spaces.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false; // تعريف حالة لكلمة المرور للتأكد

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextWidget(
                text: 'Create your account',
                size: 30,
                isBold: true,
                color: primary,
              ),
              trVSpace64,
              // Enter Name
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Name',
                  hintStyle: const TextStyle(color: primary),
                  prefixIcon: const Icon(
                    Icons.person,
                    color: primary,
                  ),
                  filled: true,
                  fillColor: bkSecond,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: primary,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
              trVSpace8,
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Email',
                  hintStyle: const TextStyle(color: primary),
                  prefixIcon: const Icon(
                    Icons.email,
                    color: primary,
                  ),
                  filled: true,
                  fillColor: bkSecond,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: primary,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
              trVSpace8,
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Password',
                  hintStyle: const TextStyle(color: primary),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: primary,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: primary,
                    ),
                    onPressed: () {
                      // Toggle the visibility of the password
                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });
                    },
                  ),
                  filled: true,
                  fillColor: bkSecond,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: primary,
                      width: 2.0,
                    ),
                  ),
                ),
                obscureText: !isPasswordVisible,
              ),
              trVSpace8,
              TextField(
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  hintStyle: const TextStyle(color: primary),
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: primary,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      isConfirmPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: primary,
                    ),
                    onPressed: () {
                      // Toggle the visibility of the password
                      setState(() {
                        isConfirmPasswordVisible = !isConfirmPasswordVisible;
                      });
                    },
                  ),
                  filled: true,
                  fillColor: bkSecond,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: primary,
                      width: 2.0,
                    ),
                  ),
                ),
                obscureText: !isConfirmPasswordVisible,
              ),
              trVSpace24,
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: TextWidget(
                    text: "Sign Up",
                    color: white,
                    size: 18,
                    isBold: true,
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
