import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.selectedAnswers, {super.key});

  final List<String> selectedAnswers;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You answared X out of Y questions correctly!'),
            const SizedBox(
              height: 30,
            ),
            const Text('You answared X out of Y questions correctly!'),
            const SizedBox(
              height: 30,
            ),
            TextButton(onPressed: (){}, child: const Text('Restart quiz!'))
          ],
        ),
      ),
    );
  }
}
