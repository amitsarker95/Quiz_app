import 'package:flutter/material.dart';
import 'questions_store.dart';
import 'answer_store.dart';

class QuizStore extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int  questionIndex;
  final Function  answerQuestion;

   QuizStore(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex}) ;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        QuestionStore(
          questions[questionIndex]['Question'] as String,
        ),
        const SizedBox(
          height: 10,
        ),
        ...(questions[questionIndex]['Answer'] as List<Map<String, Object>>)
            .map((answer) {
          return AnswerStore(
              () => answerQuestion(answer['score']), answer['text'] as String);
        }).toList(),
      ],
    );
  }
}
