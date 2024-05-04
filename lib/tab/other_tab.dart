import 'package:flutter/material.dart';
import 'package:rescue_time/components/tab_info_widget.dart';

class OtherTab extends StatelessWidget {
  List aboutTab = [
    [
      "Importance of First Aid",
      "First aid is essential for providing immediate care to injured or ill individuals before professional medical help arrives. It:\n\n\nEnables immediate response to emergencies, potentially saving lives.\nPrevents complications and further injuries.\nPromotes faster recovery.\nReduces pain and suffering.\nPreserves life through critical interventions like CPR.\nEmpowers individuals to take action during emergencies, making them valuable assets in their communities."
    ],
    [
      "The Positive Impact of First Aid",
      "First aid is essential for providing immediate care to injured or ill individuals before professional medical help arrives. It:\n\n\nEnables immediate response to emergencies, potentially saving lives.\nPrevents complications and further injuries.\nPromotes faster recovery.\nReduces pain and suffering.\nPreserves life through critical interventions like CPR.\nEmpowers individuals to take action during emergencies, making them valuable assets in their communities."
    ]
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: aboutTab.length,
      itemBuilder: (BuildContext context, int index) {
        return TabInfoWidget(
          description: aboutTab[index][1],
          title: aboutTab[index][0],
          icon: Icons.nightlight_outlined        );
      },
    );
  }
}
