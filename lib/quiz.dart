import 'package:flutter/material.dart';
import 'package:quiz_app/QuestionScreen.dart';
import 'package:quiz_app/questions.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/startlogo.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedanswers = [];
  var activewidget = 'start-screen';
  
  void screenchanged() {
    setState(() {
      activewidget = 'question-screeen';
    });
  }

  void chooseanswer(String answer) {
    selectedanswers.add(answer);
    if (selectedanswers.length == questions.length) {
      setState(() {
        activewidget = 'result-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = startScreen(screenchanged);

    if (activewidget == 'question-screen') {
      screenWidget = QuestionScreen(
        onSelectAnswer: chooseanswer,
      );
    }
  

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
              : activewidget != 'result-screen'
        ? QuestionScreen(
            onSelectAnswer: chooseanswer,
          )
        : result(chosenAnswers: selectedanswers,),
        ),
      ),
    );
  }
}
