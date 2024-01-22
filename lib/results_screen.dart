import 'package:flutter/material.dart';

import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
  });

  final List<String> chosenAnswers;
  // il get sono i GETTER
  // se restituisce una ìì valore ed è ua funzione si puo inserite la chiave get prima del nome della funzione
  // e si riesce ad accedere come fosse una variabile

  // ----- Funzione
  // List<Map<String, Object>> getSummaryData() {
  //   final List<Map<String, Object>> summary = [];

  //   for (var i = 0; i < chosenAnswers.length; i++) {
  //     final question = questions[i];
  //     final answer = chosenAnswers[i];

  //     summary.add({
  //       'question_index': i,
  //       'question': question.text,
  //       'correct_answer': question.answers[0],
  //       'user_answer': answer,
  //     });
  //   }

  //   return summary;
  // }

  // ---- variabile GETTER - get
  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      final question = questions[i];
      final answer = chosenAnswers[i];

      summary.add({
        'question_index': i,
        'question': question.text,
        'correct_answer': question.answers[0],
        'user_answer': answer,
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    // in caso è una funzione bisogna passarla in una variabile,
    // ma se si usa il get non si deve richiamrae ma utilizzare direttaente.
    //e comunque continua ad avere le funzionalità di funzione
    //anche s e si comporta come una variabile

    // final summaryData = getSummaryData();

    final numTotalQuestions = questions.length;

    // funzione normale amnonima
    // final numCorectQuestions = summaryData.where((data) {
    //   return data['correct_answer'] == data['user_answer'];
    // }).length;

    // utilizzo di una arrow function
    final numCorectQuestions = summaryData
        .where((data) => data['correct_answer'] == data['user_answer'])
        .length;
    final title =
        'You answared $numCorectQuestions out of $numTotalQuestions questions correctly!';

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton(onPressed: () {}, child: const Text('Restart quiz!'))
          ],
        ),
      ),
    );
  }
}
