import 'package:flutter/material.dart';

class AnswerStore extends StatelessWidget {
  final VoidCallback currentAnswer;
  final String correctAnswer;
  AnswerStore(this.currentAnswer, this.correctAnswer);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      width: double.infinity,
      child: RaisedButton(
        color: Colors.brown,
        textColor: Colors.white54,
        child: Text(correctAnswer),
        onPressed: currentAnswer,
      ),
    );
  }
}




