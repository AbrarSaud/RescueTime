import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rescue_time/components/button.dart';
import 'package:rescue_time/constants/colors.dart';
import 'package:rescue_time/constants/nav.dart';
import 'package:rescue_time/constants/show_dialog_widget.dart';
import 'package:rescue_time/constants/spaces.dart';
import 'package:rescue_time/screens/auth/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              trVSpace128,
              Image.asset('assets/images/logo.png'),
              trVSpace32,
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ButtonWidget(
                  text: 'Emergency check',
                  isBorderSide: false,
                  isPrimaryColor: true,
                  onPress: () {
                    showCupertinoModalPopup(
                        context: context,
                        builder: (context) {
                          return const ShowDialogWidget();
                        });
                  },
                  color: white,
                ),
              ),
              trVSpace16,
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ButtonWidget(
                  text: 'Login / Sign up',
                  isBorderSide: true,
                  isPrimaryColor: false,
                  onPress: () {
                    context.pushNav(screen: const LoginScreen());
                  },
                  color: primary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
