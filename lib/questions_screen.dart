import 'package:flutter/material.dart';

import 'package:adv_basics/styled_text.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          StyledText.startWhite('Learn Flutter he fun way!'),
        ],
      ),
    );
  }
}
