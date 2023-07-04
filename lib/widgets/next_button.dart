import 'package:flutter/material.dart';
import '../constants.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key, required this.nextQuestion});
  final VoidCallback nextQuestion;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: nextQuestion,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: backgroundLight,
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        margin: EdgeInsets.all(15.0),
        child: const Text(
          'Next Question',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

//this will be added to floating action button
