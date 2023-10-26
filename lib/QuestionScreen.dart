import 'package:flutter/material.dart';
import 'package:quiz_app/buttonstyle.dart';
import 'package:quiz_app/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen(
      {super.key, required this.onSelectAnswer,});
  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentquestionindex = 0;
  void answerquestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);



    setState(() {
      currentquestionindex++;
    });


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
              style: GoogleFonts.lato(
                fontSize: 16,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            ...currentquestion.getShuffledAnswer().map((answert) {
              return buttonstyle(
                answer: answert,
                ontap: () {
                  answerquestion(answert);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
