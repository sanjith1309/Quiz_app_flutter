import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/question_summary.dart';
import 'package:quiz_app/questions.dart';

class result extends StatelessWidget {
  

  const result({super.key,required this.chosenAnswers,});

  final List<String> chosenAnswers;
  List<Map<String,Object>> getsummary(){
    final List<Map<String,Object>> summary=[];
  for(var i=0;i<chosenAnswers.length;i++){
    summary.add(
      {
        'question_index':i,
        'question':questions[i].text,
        'correct-answer':questions[i].answers[0],
        'user-answer':chosenAnswers[i]
      }
    );
   
  }


    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final arrmap = getsummary();
    final numoftotquestion = questions.length;
    final numofcrtquestion = arrmap.where((data){
      return data['correct-answer'] == data['user-answer'];
      
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Text("You answered $numofcrtquestion out of $numoftotquestion answers corretly!"),
              const SizedBox(
                height: 30,
              ),
              QuestionsSummary(summaryData: arrmap),
              const SizedBox(
                height: 30,
              ),
              TextButton(onPressed: (){print(chosenAnswers);}, child: Text('Start Quiz Again!'),),

          ],
        ),
      ),
    );
  }
}