import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({
    super.key,
    required this.text,
    required this.color,
    required this.fontSize,
    required this.fontWeight,
    required this.textAlign,
  });

  const StyledText.startWhite(
    this.text, {
    super.key,
  })  : fontSize = 20,
        fontWeight = FontWeight.w400,
        color = Colors.white,
        textAlign = TextAlign.start;

  const StyledText.answerTitle(
    this.text, {
    super.key,
  })  : fontSize = 15,
        fontWeight = FontWeight.w400,
        color = Colors.white,
        textAlign = TextAlign.center;

  const StyledText.answerText(
    this.text, {
    super.key,
  })  : fontSize = 15,
        fontWeight = FontWeight.bold,
        color = Colors.white,
        textAlign = TextAlign.center;

  const StyledText.btn(
    this.text, {
    super.key,
  })  : fontSize = 15,
        fontWeight = FontWeight.bold,
        color = Colors.white,
        textAlign = TextAlign.center;

  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
      textAlign: textAlign,
    );
  }
}
