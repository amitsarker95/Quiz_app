import 'package:flutter/material.dart';

class QuestionStore extends StatelessWidget {
 final String ? questionText ;

  QuestionStore(this.questionText);


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
       questionText!,
       style: const TextStyle(
        fontSize: 24,
         fontWeight: FontWeight.bold,
       ),
      ),
    );
  }
}

