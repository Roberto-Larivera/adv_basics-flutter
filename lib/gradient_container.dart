import 'package:flutter/material.dart';

import 'package:adv_basics/start_screen.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 59, 4, 132),
            Color.fromARGB(255, 82, 8, 178),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: StartScreen(),
      ),
    );
  }
}
