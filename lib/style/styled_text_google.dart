import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledTextGoogle extends StatelessWidget {
  const StyledTextGoogle({
    super.key,
    required this.text,
    required this.color,
    required this.fontSize,
    required this.fontWeight,
  });

  const StyledTextGoogle.index(this.text, {super.key})
      : fontSize = 15,
        fontWeight = FontWeight.w900,
        color = const Color.fromARGB(255, 59, 4, 132);
  const StyledTextGoogle.title(this.text, {super.key})
      : fontSize = 15,
        fontWeight = FontWeight.w900,
        color = const Color.fromARGB(255, 212, 188, 244);

  const StyledTextGoogle.userAnswer(this.text, {super.key})
      : fontSize = 13,
        fontWeight = FontWeight.w900,
        color = const Color.fromARGB(150, 209, 101, 178);
  const StyledTextGoogle.correctAnswer(this.text, {super.key})
      : fontSize = 13,
        fontWeight = FontWeight.w900,
        color = const Color.fromARGB(150, 128, 199, 223);

  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lato(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
