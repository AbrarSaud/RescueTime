import 'package:flutter/material.dart';
import 'package:rescue_time/constants/colors.dart';

class ContentTabsWidget extends StatelessWidget {
  const ContentTabsWidget({super.key, required this.iconPath});
  final String iconPath;
  @override
  Widget build(BuildContext context) {
    return Tab(
      height:58,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(color:  Colors.grey[200],
        borderRadius: BorderRadius.circular(12)),
        child: Image.asset(iconPath,
        color:primary,),
      ),
    );
  }
}
