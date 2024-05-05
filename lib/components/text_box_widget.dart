import 'package:flutter/material.dart';
import 'package:rescue_time/components/text_widget.dart';
import 'package:rescue_time/constants/colors.dart';

class TextBoxWidget extends StatelessWidget {
  const TextBoxWidget({Key? key, this.onPressed, required this.text, required this.label}) : super(key: key);
  final Function()? onPressed;
  final String text;
  final String label;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, 
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: TextWidget(text: label, color: Colors.grey[700] ?? black,),
          ),
          TextWidget(text: text ,color: primary,size: 18,),
        ],
      ),
    );
  }
}
