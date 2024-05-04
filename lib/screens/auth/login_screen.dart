import 'package:flutter/material.dart';
import 'package:rescue_time/components/button_widget.dart';
import 'package:rescue_time/components/text_field_widget.dart';
import 'package:rescue_time/components/text_widget.dart';
import 'package:rescue_time/constants/colors.dart';
import 'package:rescue_time/constants/nav.dart';
import 'package:rescue_time/constants/spaces.dart';
import 'package:rescue_time/screens/auth/signup_screen.dart';
import 'package:rescue_time/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
  });

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
                const TextFieldWidget(
                  hintText: 'Enter Email',
                  icon: Icon(
                    Icons.email,
                    color: primary,
                  ),
                  label: 'Email',
                ),
                const TextFieldWidget(
                  hintText: 'Enter Password',
                  icon: Icon(
                    Icons.lock,
                    color: primary,
                  ),
                  label: 'Password',
                ),
                trVSpace24,
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ButtonWidget(
                    text: 'Login',
                    isBorderSide: false,
                    isPrimaryColor: true,
                    onPress: () {
                      context.pushNav(screen: const HomeScreen());
                    },
                    color: white,
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
