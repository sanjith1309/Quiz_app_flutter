import 'package:flutter/material.dart';
import 'package:quiz_app/buttonstyle.dart';
import 'package:quiz_app/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentquestionindex = 0 ;
  void answerquestion(){
    currentquestionindex++;
  }
  @override
  Widget build(BuildContext context) {
    final currentquestion = questions[currentquestionindex];

    return Center(
      child: Container(
        margin: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentquestion.text,
              style: const TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255), fontSize: 15),
            ),
            const SizedBox(height: 20,),
            ...currentquestion.getShuffledAnswer().map((answert) {
              return buttonstyle(answer: answert, ontap: () {});
            }),
          ],
        ),
      ),
    );
  }
}
