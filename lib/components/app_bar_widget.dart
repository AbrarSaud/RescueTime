import 'package:flutter/material.dart';
import 'package:rescue_time/components/text_widget.dart';
import 'package:rescue_time/constants/colors.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  AppBarWidget(
      {super.key,
      this.icon,
      this.colorIconTheme = black,
      this.onPressed,
      this.text = '', required this.isBackButton});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  final String text;
  final IconData? icon;
  final Color? colorIconTheme;
  final Function()? onPressed;
  final bool isBackButton;
  Widget build(BuildContext context) {
    return AppBar(
      title: TextWidget(text: text, size: 19, color: primary, isBold: true),
      elevation: 0,
      iconTheme: IconThemeData(color: colorIconTheme),
      leading:  isBackButton ?
      
       BackButton(
        color: primary,
  
      ) :
      Padding(padding: const EdgeInsets.only(left: 24),
      child: IconButton( onPressed: () {  }, icon: Icon(Icons.menu ,color: Colors.grey[800],size: 36,),),)
      
      ,
      centerTitle: true,
      actions: [
        Padding(
        padding: const EdgeInsets.only(right: 24),
          child: IconButton(
            onPressed: onPressed,
            icon: Icon(
              icon,
              size: 36,
              color: Colors.grey[800],
            ),
          ),
        ),
      ],
      backgroundColor: transparent,
    );
  }
}
