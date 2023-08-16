import 'package:flutter/material.dart';

// ignore: camel_case_types
class startScreen extends StatelessWidget {
  const startScreen({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(
            height: 100,
          ),
          Opacity(
            opacity: 0.5,
            child: Image.asset(
              'lib/assets/quiz-logo.png',
              width: 300,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Learn Flutter The fun way",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 20),
            ),
            icon: const Icon(Icons.arrow_circle_right_outlined),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }

  void function() {
    print("clicked");
  }
}

