import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final VoidCallback back;

  Result(this.finalScore, this.back);

  String get resultPrint {
    String resultText = 'No more question left . You have done it !';
    if (finalScore <= 100) {
      resultText = 'You\'r score is average $finalScore';
    } else if (finalScore <= 105) {
      resultText = 'You\'r score is good $finalScore';
    } else if (finalScore <= 110) {
      resultText = 'You\'r score is excellent $finalScore';
    } else if (finalScore <= 120) {
      resultText = 'You\'r score is great $finalScore';
    } else {
      resultText = 'You\'r score is best and super $finalScore';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 54,
          ),
          Center(
            child: Text(
              resultPrint,
              style: const TextStyle(
                decoration: TextDecoration.underline,
                backgroundColor: Colors.brown,
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Center(
            child: RaisedButton(
              color: Colors.brown,
              child: const Text(
                'Back to quiz',
                style: TextStyle(
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              onPressed: back,
            ),
          ),
        ],
      ),
    );
  }
}
