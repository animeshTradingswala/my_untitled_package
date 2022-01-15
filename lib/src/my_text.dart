import 'package:flutter/material.dart';

class MyTexts extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final TextDecoration? decoration;

  const MyTexts({
    Key? key,
    required this.text,
    required this.color,
    required this.size,
    this.fontWeight,
    this.fontStyle,
    this.decoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        decoration: decoration,
        fontSize: size,
        color: color,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
      ),
    );
  }
}
