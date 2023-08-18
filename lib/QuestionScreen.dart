import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Question??'),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("answer 1"),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("answer 2"),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("answer 3"),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("answer 4"),
          ),
        ],
      ),
    );
  }
}
