import 'package:flutter/material.dart';
import 'package:rescue_time/components/text_widget.dart';
import 'package:rescue_time/constants/colors.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  AppBarWidget(
      {super.key,
      this.icon,
      this.colorIconTheme = black,
      this.onPressed,
      this.backgroundColor = white,
      this.text = ''});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  final String text;
  final IconData? icon;
  final Color? colorIconTheme;
  final Function()? onPressed;
  final Color? backgroundColor;

  Widget build(BuildContext context) {
    return AppBar(
      title: TextWidget(text: text, color: primary, isBold: true),
      elevation: 0,
      iconTheme: IconThemeData(color: colorIconTheme),
      leading: const BackButton(
        color: primary,
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: primary,
          ),
        ),
      ],
      backgroundColor: backgroundColor,
    );
  }
}
