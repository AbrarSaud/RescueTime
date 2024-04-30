import 'package:flutter/material.dart';
import 'package:rescue_time/components/text_widget.dart';
import 'package:rescue_time/constants/colors.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({
    super.key,
    required this.hintText,
    this.controller,
    required this.icon,
    required this.label,
    this.textLabelSize,
  });
  final String hintText;
  final TextEditingController? controller;
  final Icon? icon;
  final String label;
  final double? textLabelSize;

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(
            text: widget.label,
            size: widget.textLabelSize ?? 18,
            isBold: true,
            textAlign: TextAlign.left,
            color: primary.withOpacity(0.7),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 6.5),
            child: TextField(
              controller: widget.controller,
              decoration: InputDecoration(
                suffixIcon:
                    (widget.label.toLowerCase().compareTo("password") == 0)
                        ? GestureDetector(
                            onTap: () => setState(() {
                              isVisible = !isVisible;
                            }),
                            child: isVisible
                                ? const Icon(
                                    Icons.visibility,
                                    color: primary,
                                  )
                                : const Icon(
                                    Icons.visibility_off,
                                    color: primary,
                                  ),
                          )
                        : null,
                hintText: widget.hintText,
                hintStyle: const TextStyle(color: primary),
                prefixIcon: widget.icon,
                filled: true,
                fillColor: bkSecond,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: primary,
                    width: 2.0,
                  ),
                ),
              ),
              obscureText:
                  widget.label.toLowerCase().compareTo("password") == 0 &&
                      !isVisible,
            ),
          ),
        ],
      ),
    );
  }
}
