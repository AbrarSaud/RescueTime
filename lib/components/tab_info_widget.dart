
import 'package:flutter/material.dart';
import 'package:rescue_time/components/text_widget.dart';
import 'package:rescue_time/constants/colors.dart';
import 'package:rescue_time/constants/spaces.dart';

class TabInfoWidget extends StatelessWidget {
  const TabInfoWidget({super.key, required this.title,  this.icon, this.onPress});
  final String title;
  final IconData? icon;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Container(
        height: 85,
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
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      color: primary,
                      padding: const EdgeInsets.all(10),
                      height: 85,
                      child: Icon(
                        icon,
                        color: white,
                      ),
                    ),
                  ),
                ),
                trHSpace16,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextWidget(
                      overflow: TextOverflow.ellipsis,
                      text: title,
                      size: 14,
                      color: black,
                      isBold: false,
                    ),
                  ],
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Container(
                child: IconButton(
                  onPressed: onPress,
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: primary,
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
