import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  QuestionsSummary({super.key,required this.summaryData});
  List<Map<String,Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data){
              return Row(
                children: [
                  Text((( data['question_index']as int) + 1).toString()),
                  Expanded(
                    child: Column(
                        children: [
                          Text(data['question']as String),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(data['user-answer']as String),
                          Text(data['correct-answer'] as String),
                        ],
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