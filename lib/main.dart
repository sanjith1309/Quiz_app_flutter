import 'package:flutter/material.dart';
import 'package:quiz_app/startlogo.dart';

void main() {
  runApp(
    MaterialApp(
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
          child: const startScreen(),
        ),
      ),
    ),
  );
}
