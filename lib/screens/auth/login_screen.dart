import 'package:flutter/material.dart';
import 'package:rescue_time/components/text_widget.dart';
import 'package:rescue_time/constants/colors.dart';
import 'package:rescue_time/constants/nav.dart';
import 'package:rescue_time/constants/spaces.dart';
import 'package:rescue_time/screens/auth/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    super.key,
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPasswordVisible = false; // تعريف isPasswordVisible هنا

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/login.png',
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
                trVSpace16,
                TextField(
                  obscureText: !isPasswordVisible,
                  decoration: InputDecoration(
                    hintText: 'Enter Password',
                    hintStyle: const TextStyle(color: primary),
                    prefixIcon: const Icon(
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
                ),
                trVSpace24,
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.login,
                      color: white,
                    ),
                    label: const TextWidget(
                      text: "Login",
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
                trVSpace8,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const TextWidget(
                      text: 'Don\'t have an account?',
                      size: 18,
                      color: primary,
                    ),
                    TextButton(
                      onPressed: () {
                        context.pushNav(screen: const SignupScreen());
                      },
                      child: const TextWidget(
                        text: 'Sign up',
                        color: primary,
                        size: 18,
                        isBold: true,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
