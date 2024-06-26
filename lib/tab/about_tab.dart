import 'package:flutter/material.dart';
import 'package:rescue_time/components/tab_info_widget.dart';
import 'package:rescue_time/data/tab_data.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({
    super.key,
    required this.isContentTab,
    required this.onPress,
  });
  final Function() onPress;

  final bool isContentTab;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: ListView.builder(
        itemCount:
            isContentTab ? infoContentTab.length : aboutTimeRescueTab.length,
        itemBuilder: (BuildContext context, int index) {
          return TabInfoWidget(
              title: isContentTab
                  ? infoContentTab[index][0]
                  : aboutTimeRescueTab[index][0],
              icon: Icons.info,
              onPress: onPress);
        },
      ),
    );
  }
}
