import 'package:flutter/material.dart';

// ignore: camel_case_types
class buttonstyle extends StatelessWidget {
  const buttonstyle({
    super.key,
    required this.answer,
    required this.ontap,
  });

  final String answer;
  final void Function() ontap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        backgroundColor: const Color.fromARGB(255, 1, 8, 40),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Text(
        answer,
        textAlign: TextAlign.center,
      ),
    );
  }
}
