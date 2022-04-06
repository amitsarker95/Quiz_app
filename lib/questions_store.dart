import 'package:flutter/material.dart';

class QuestionStore extends StatelessWidget {
 final String questionText ;

 QuestionStore(this.questionText);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 44,
      color: Colors.black45,
      child: Center(
        child: Text(
         questionText,
         style: const TextStyle(
          fontSize: 18,
           fontWeight: FontWeight.bold,
           color: Colors.white70,
         ),
        ),
      ),
    );
  }
}

