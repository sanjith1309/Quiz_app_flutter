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
            Image.asset(
              'lib/assets/quiz-logo.png',
              width: 300,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Learn Flutter The fun way",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: function,
              style: TextButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                textStyle: const TextStyle(fontSize: 20,color: Colors.white),
              ),
              child: const Text("Start Quiz"),
            )
          ],
        ),
      );
    
  }

  void function() {
    print("clicked");
  }
}
