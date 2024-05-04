import 'package:flutter/material.dart';
import 'package:rescue_time/components/app_bar_widget.dart';
import 'package:rescue_time/components/emergency_card.dart';
import 'package:rescue_time/components/text_widget.dart';
import 'package:rescue_time/constants/colors.dart';
import 'package:rescue_time/constants/spaces.dart';
import 'package:rescue_time/main.dart';

class EmergencyScreen extends StatelessWidget {
  const EmergencyScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(isBackButton: true,),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            trVSpace64,
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: TextWidget(
                text: 'Please, choose the \nemergency ..',
                size: 28,
                color: black,
                isBold: true,
              ),
            ),
            trVSpace32,
            Expanded(
                child: ListView.builder(
  itemCount: listEmergencies.length,
  itemBuilder: (context, index) {
    return EmergencyCard(
     listEmergencie: listEmergencies[index],
    );
  }
))
          ],
        ));
  }
}
