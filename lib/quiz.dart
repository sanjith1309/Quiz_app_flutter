import 'package:flutter/material.dart';
import 'package:quiz_app/QuestionScreen.dart';
import 'package:quiz_app/startlogo.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activewidget = 'start-screen';

  void screenchanged() {
    setState(() {
      activewidget = 'question-screeen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 29, 93, 254),
                Color.fromARGB(255, 1, 27, 93),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: activewidget == 'start-screen'
              ? startScreen(screenchanged)
              : const QuestionScreen(),
        ),
      ),
    );
  }
}
