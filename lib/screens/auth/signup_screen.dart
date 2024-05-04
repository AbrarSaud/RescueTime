import 'package:flutter/material.dart';
import 'package:rescue_time/components/button_widget.dart';
import 'package:rescue_time/components/text_field_widget.dart';
import 'package:rescue_time/components/text_widget.dart';
import 'package:rescue_time/constants/colors.dart';
import 'package:rescue_time/constants/nav.dart';
import 'package:rescue_time/constants/spaces.dart';
import 'package:rescue_time/screens/home_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

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
                trVSpace128,
                const TextWidget(
                  text: 'Create your account',
                  size: 30,
                  isBold: true,
                  color: primary,
                ),
                trVSpace64,
                const TextFieldWidget(
                  hintText: 'Enter Name',
                  icon: Icon(
                    Icons.person,
                    color: primary,
                  ),
                  label: 'Name',
                ),
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
                const TextFieldWidget(
                  hintText: 'Confirm Password',
                  icon: Icon(
                    Icons.lock,
                    color: primary,
                  ),
                  label: 'Password',
                ),
                trVSpace16,
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ButtonWidget(
                    text: 'Sign Up',
                    isBorderSide: false,
                    isPrimaryColor: true,
                    onPress: () {
                      context.pushNav(screen: const HomeScreen());
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
}
