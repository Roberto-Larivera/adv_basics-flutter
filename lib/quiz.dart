import 'package:flutter/material.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:adv_basics/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  // 1 - Passare direttamente il widget con l'utilizzo in initState
  /*
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(swhitchScreen);
    super.initState();
  }

  swhitchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }
  */
// 2 - Utilizzare una stringa di identificazione dello screen, e usare operatore ternario per l'inserimento del widget
// 3 - Utilizzare un enum per l'identificazione dello screen, e usare l'if con una variabile prima del return del build
  var activeScreen = 'start_screen';
  swhitchScreen() {
    setState(() {
      activeScreen = 'questions_screen';
    });
  }

  @override
  Widget build(context) {
    Widget activeWidget = StartScreen(swhitchScreen);
    if (activeScreen == 'questions_screen') {
      activeWidget = const QuestionsScreen();
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
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
          // child: activeScreen, // Metodo 1
          /*
          child: activeScreen == 'start_screen'
              ? StartScreen(swhitchScreen)
              : const QuestionsScreen(),
              */
          // Metodo 2
          child: activeWidget,
        ),
      ),
    );
  }
}
