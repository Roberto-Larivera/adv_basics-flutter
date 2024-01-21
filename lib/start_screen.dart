import 'package:flutter/material.dart';

import 'package:adv_basics/styled_text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 250),
          const SizedBox(height: 50),
          const StyledText.startWhite('Learn Flutter he fun way!'),
          const SizedBox(height: 50),
          OutlinedButton.icon(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              side: const BorderSide(color: Colors.white, width: 0.5),
            ),
            icon: const Icon(Icons.play_arrow),
            label: const StyledText.btn('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
