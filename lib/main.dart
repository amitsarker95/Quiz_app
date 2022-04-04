import 'package:flutter/material.dart';
import 'questions_store.dart';
import 'answer_store.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'Question': 'What\'s your favorite color?',
        'Answer': ['Black', 'Blue', 'Green', 'Yellow', 'White'],
      },
      {
        'Question': 'What\'s your favorite game?',
        'Answer': ['Football', 'Cricket', 'Basketball', 'Golf']
      },
      {
        'Question': 'Which one is your favorite place?',
        'Answer': ['Dhaka', 'Sylhet', 'Netrakona', 'Mymensingh']
      },
      {
        'Question': 'Who is your favorite player?',
        'Answer': ['Messi', 'Ronaldo', 'Kaka', 'Ronaldinho']
      },
      {
        'Question': 'Which one is your favorite food?',
        'Answer': ['Ice-cream', 'Rice', 'Egg', 'Chicken']
      },
      {
        'Question': 'Which one your favorite device?',
        'Answer': ['Mobile', 'Computer', 'Laptop', 'Music player']
      },
      {
        'Question': 'Which one your favorite brand?',
        'Answer': ['Nokia', 'Samsung', 'Walton', 'Apple']
      },
      {
        'Question': 'Which one your favorite brand 1?',
        'Answer': ['Nokia', 'Samsung', 'Walton', 'Apple']
      },
      {
        'Question': 'Which one your favorite brand 2?',
        'Answer': ['Nokia', 'Samsung', 'Walton', 'Apple']
      },
      {
        'Question': 'Which one your favorite brand 3?',
        'Answer': ['Nokia', 'Samsung', 'Walton', 'Apple']
      },
      {
        'Question': 'Which one your favorite brand 4?',
        'Answer': ['Nokia', 'Samsung', 'Walton', 'Apple']
      },
      {
        'Question': 'Which one your favorite brand 5?',
        'Answer': ['Nokia', 'Samsung', 'Walton', 'Apple']
      },
      {
        'Question': 'Which one your favorite brand 6?',
        'Answer': ['Nokia', 'Samsung', 'Walton', 'Apple']
      },
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: const Center(
            child: Text(
              'Quiz 2022',
              style: TextStyle(
                fontSize: 44,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  QuestionStore(
                    questions[_questionIndex]['Question'] as String,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ...(questions[_questionIndex]['Answer'] as List<String>)
                      .map((answer) {
                    return AnswerStore(_answerQuestion, answer);
                  }).toList(),
                ],
              )
            : Center(
                child: Text(
                  'No more question left',
                ),
              ),
      ),
    );
  }
}
