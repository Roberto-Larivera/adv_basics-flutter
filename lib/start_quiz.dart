import 'package:flutter/material.dart';

import 'package:adv_basics/styled_text.dart';
import 'package:adv_basics/styled_text_btn.dart';

class StartQuiz extends StatelessWidget {
  const StartQuiz({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/quiz-logo.png', width: 250),
        const SizedBox(height: 50),
        const StyledText(text: 'Learn Flutter he fun way!', fontSize: 20),
        const SizedBox(height: 50),
        OutlinedButton(
          onPressed: () {
            debugPrint('Received click');
          },
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),   
            ),
            side: const BorderSide(color: Colors.white, width: 0.5),
          ),
          child: const StyledTextBtn(text: 'Start Quiz', fontSize: 15),
        ),
      ],
    );
  }
}
