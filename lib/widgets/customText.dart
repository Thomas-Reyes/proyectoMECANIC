import 'package:flutter/material.dart';

class customText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final TextAlign? textAlign;

  const customText(
      {super.key, required this.text, required this.style, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}

class customTextStyle {
  static TextStyle regular({Color? color, double? fontSize}) {
    return TextStyle(
        fontFamily: 'Roboto',
        fontSize: fontSize ?? 16,
        fontWeight: FontWeight.w400,
        color: color);
  }

  static TextStyle medium({Color? color, double? fontSize}) {
    return TextStyle(
        fontFamily: 'Roboto',
        fontSize: fontSize ?? 18,
        fontWeight: FontWeight.w500,
        color: color);
  }

  static TextStyle semibold({Color? color, double? fontSize}) {
    return TextStyle(
        fontFamily: 'Roboto',
        fontSize: fontSize ?? 20,
        fontWeight: FontWeight.w600,
        color: color);
  }
}
