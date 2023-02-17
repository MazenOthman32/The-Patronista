import 'package:flutter/material.dart';

class MainText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight? fontWeight;

  const MainText(
      {Key? key,
      required this.text,
      required this.fontSize,
      required this.color,
      this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}
