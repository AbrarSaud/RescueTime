import 'package:flutter/material.dart';
import 'package:rescue_time/components/tab_info_widget.dart';
import 'package:rescue_time/data/tab_data.dart';

class ReadingTab extends StatelessWidget {
    const ReadingTab({super.key, required this.isContentTab, required this.onPress, });

final Function() onPress;

  final bool isContentTab;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: ListView.builder(
        itemCount:  isContentTab ? readingContentTab.length : readingTimeRescueTab.length,
        itemBuilder: (BuildContext context, int index) {
          return TabInfoWidget(
          
            title: isContentTab
                ? readingContentTab[index][0]
                : readingTimeRescueTab[index][0],
            icon: Icons.bookmark,
                      onPress :onPress
    
          );
        },
      ),
    );
  }
}
