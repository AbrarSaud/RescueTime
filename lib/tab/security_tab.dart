import 'package:flutter/material.dart';
import 'package:rescue_time/components/tab_info_widget.dart';
import 'package:rescue_time/data/tab_data.dart';

// ignore: must_be_immutable
class SecurityTab extends StatelessWidget {
  SecurityTab({super.key, this.onPress});

  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: ListView.builder(
        itemCount: securityTimeRescueTab.length,
        itemBuilder: (BuildContext context, int index) {
          return TabInfoWidget(
              title: securityTimeRescueTab[index][0],
              icon: Icons.security,
              onPress: onPress);
        },
      ),
    );
  }
}
