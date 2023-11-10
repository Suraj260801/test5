import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
      required this.data,
      this.fontSize,
      this.fontWeight,
      this.textColor, this.textDecoration, this.opacity});

  final String data;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? textColor;
  final TextDecoration? textDecoration;
  final double ?opacity;

  @override
  Widget build(BuildContext context) {
    return Opacity(

      opacity: opacity??1,
      child: Text(
        data,
        style: TextStyle(
            fontSize: fontSize, fontWeight: fontWeight, color: textColor,
          decoration: textDecoration,
        ),
      ),
    );
  }
}
