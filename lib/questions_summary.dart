import 'package:flutter/material.dart';

import 'package:adv_basics/style/styled_text_google.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              var bgIndex = const Color.fromARGB(192, 250, 108, 155);
              if (data['user_answer'] == data['correct_answer']) {
                bgIndex = const Color.fromARGB(192, 128, 199, 223);
              }
              return Row(
                children: [
                  SizedBox(
                    width: 30,
                    child: CircleAvatar(
                      backgroundColor: bgIndex,
                      child: StyledTextGoogle.index(
                          ((data['question_index'] as int) + 1).toString()),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          StyledTextGoogle.title(data['question'] as String),
                          const SizedBox(height: 10),
                          StyledTextGoogle.userAnswer(
                              data['user_answer'] as String),
                          StyledTextGoogle.correctAnswer(
                              data['correct_answer'] as String),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
