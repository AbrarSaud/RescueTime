import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rescue_time/components/app_bar_widget.dart';
import 'package:rescue_time/components/text_widget.dart';
import 'package:rescue_time/constants/colors.dart';
import 'package:rescue_time/constants/nav.dart';
import 'package:rescue_time/constants/spaces.dart';
import 'package:rescue_time/screens/auth/login_screen.dart';

class EmergencyCheckScreen extends StatelessWidget {
  const EmergencyCheckScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextWidget(
                text: 'Are you in emergency?',
                size: 30,
                isBold: true,
                color: primary,
              ),
              trVSpace24,
              const TextWidget(
                textAlign: TextAlign.center,
                text: 'Press the Help button, and we\'ll ensure \nyou get the assistance you need ..',
                size: 20,
                isBold: false,
                color: black,
              ),
              trVSpace32,
              InkWell(
                onTap: () {
                  context.pushNav(screen: const LoginScreen());
                },
                child: Lottie.asset("assets/animations/sos.json",
                    repeat: true, reverse: true, width: 250, height: 250),
              )
            ],
          ),
        ));
  }
}
