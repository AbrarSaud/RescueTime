import 'package:flutter/material.dart';
import 'package:rescue_time/components/text_widget.dart';
import 'package:rescue_time/constants/colors.dart';
import 'package:rescue_time/constants/nav.dart';
import 'package:rescue_time/constants/spaces.dart';
import 'package:rescue_time/model/emergency_data_model.dart';
import 'package:rescue_time/screens/emergencys_details_screen.dart';

class EmergencyCard extends StatelessWidget {
  const EmergencyCard({
    super.key,
    required this.listEmergencie,
  });

  final Emergencies listEmergencie;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        height: 100,
        margin: const EdgeInsets.only(left: 25, right: 25),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          border: Border.all(color: white),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    color: primary,
                    padding: const EdgeInsets.all(10),
                    height: 70,
                    child: Image.asset(listEmergencie.emergencyImag ?? "", color: white),
                  ),
                ),
                trHSpace32,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextWidget(
                      text: listEmergencie.emergencyName ?? "",
                      size: 18,
                      color: black,
                      isBold: true,
                    ),
                  ],
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Container(
                padding: const EdgeInsets.all(5),
                child: IconButton(
                  onPressed: () {
                    context.pushNav(
                        screen: EmergencysDetailsScreen(
                      description: listEmergencie.description ?? "",
                      descriptionImag: listEmergencie.descriptionImag ?? "", emergencyName: listEmergencie.emergencyName ?? "",
                    ));
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: black,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
