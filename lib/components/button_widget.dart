import 'package:flutter/material.dart';
import 'package:rescue_time/components/text_widget.dart';
import 'package:rescue_time/constants/colors.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.text,
    this.onPress,
    required this.isBorderSide,
    required this.isPrimaryColor,
    required this.color,
  });

  final String text;
  final Function()? onPress;
  final bool isBorderSide;
  final Color color;

  final bool isPrimaryColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        backgroundColor: isPrimaryColor ? primary : white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: isBorderSide
              ? const BorderSide(width: 2, color: primary)
              : BorderSide.none,
        ),
      ),
      child: TextWidget(
        text: text,
        color: color,
        size: 18,
      ),
    );
  }
}
