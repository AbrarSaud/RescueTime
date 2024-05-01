import 'package:flutter/material.dart';
import 'package:rescue_time/components/app_bar_widget.dart';
import 'package:rescue_time/components/text_widget.dart';
import 'package:rescue_time/constants/colors.dart';

class EmergencysDetailsScreen extends StatelessWidget {
  const EmergencysDetailsScreen({
    Key? key,
    required this.description,
    required this.descriptionImag, required this.emergencyName,
  }) : super(key: key);
  final String description;

  final String emergencyName;
  final String descriptionImag;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(text: emergencyName),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 25,left: 25,right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  color: primary,
                  padding: const EdgeInsets.all(14),
                  child: TextWidget(
                    text: description ,
                    size: 18,
                    color: white,
                    isBold: false,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  height:400,
                  descriptionImag ,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
