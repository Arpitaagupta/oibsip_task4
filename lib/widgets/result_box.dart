import 'package:flutter/material.dart';
import '../constants.dart';

class ResultBox extends StatelessWidget {
  const ResultBox({
    Key? key,
    required this.result,
    required this.questionLength,
    required this.onPressed,
  }) : super(key: key);

  final int result;
  final int questionLength;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: background,
      content: Padding(
        padding: const EdgeInsets.all(60.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Result : ',
              style: TextStyle(
                  color: neutral, fontSize: 22.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20.0,
            ),
            CircleAvatar(
              child: Text(
                '$result / $questionLength ',
                style: TextStyle(
                  color: result == questionLength / 2
                      ? Colors.black
                      : Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              radius: 70.0,
              backgroundColor: result == questionLength
                  ? Colors
                      .green // when the result is equal to the question length
                  : result > questionLength / 2
                      ? Colors
                          .blue // when the result is more than half of the question length
                      : result == questionLength / 2
                          ? Colors
                              .yellow // when the result is exactly half of the question length
                          : Colors
                              .red, // when the result is less than half of the question length
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              result == questionLength
                  ? 'Great!😀' // when the result is equal to the question length
                  : result > questionLength / 2
                      ? 'Good!☺️' // when the result is more than half of the question length
                      : result == questionLength / 2
                          ? 'Almost There!😐' // when the result is exactly half of the question length
                          : 'Try Again!😫', // when the result is less than half of the question length
              style: const TextStyle(
                color: neutral,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 25.0),
            GestureDetector(
              onTap: onPressed,
              child: const Text(
                'Start Over',
                style: TextStyle(
                  fontSize: 20.0,
                  color: skyBlueColor,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
