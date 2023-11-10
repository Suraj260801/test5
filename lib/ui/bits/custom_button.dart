import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.label,
      required this.radius,
      required this.color,
      required this.height,
      required this.width,
      required this.labelSize,
      required this.labelFontWeight,
      required this.labelColor});

  final String label;
  final double height;
  final double width;
  final double radius;
  final Color color;
  final double labelSize;
  final FontWeight labelFontWeight;
  final Color labelColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        alignment: Alignment.center,
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(radius)),
        child: CustomText(
          data: label,
          fontSize: labelSize,
          fontWeight: labelFontWeight,
          textColor: labelColor,
        ),
      ),
    );
  }
}
