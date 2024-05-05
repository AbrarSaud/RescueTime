import 'package:flutter/material.dart';
import 'package:rescue_time/components/tab_info_widget.dart';
import 'package:rescue_time/data/tab_data.dart';



class VideoTab extends StatelessWidget {
  const VideoTab({
    super.key,
    required this.onPress,
  });
  final Function() onPress;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: ListView.builder(
        itemCount:
          vdeoContentTab.length,
        itemBuilder: (BuildContext context, int index) {
          return TabInfoWidget(
              title:  vdeoContentTab[index][0],
              icon: Icons.info,
              onPress: onPress);
        },
      ),
    );
  }
}
