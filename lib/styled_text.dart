import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(
    this.text,
    this.fontSize,
    this.fontWeight,
    this.color, {
    super.key,
  });

  const StyledText.startWhite(
    this.text, {
    super.key,
  })  : fontSize = 20,
        fontWeight = FontWeight.w400,
        color = Colors.white;

  const StyledText.answerTitle(
    this.text, {
    super.key,
  })  : fontSize = 15,
        fontWeight = FontWeight.w400,
        color = Colors.white;

  const StyledText.answerText(
    this.text, {
    super.key,
  })  : fontSize = 15,
        fontWeight = FontWeight.bold,
        color = Colors.white;

  const StyledText.btn(
    this.text, {
    super.key,
  })  : fontSize = 15,
        fontWeight = FontWeight.bold,
        color = Colors.white;

  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
