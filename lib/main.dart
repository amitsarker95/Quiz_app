import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(const QuizApp());

class QuizApp extends StatefulWidget {
  const QuizApp({Key key}) : super(key: key);

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
     _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _backQuiz(){
    setState(() {
       _questionIndex = 0;
       _totalScore = 0;
    });
  }



  @override
  Widget build(BuildContext context) {
    final _questions = [
      {
        'Question': 'What\'s your favorite color?',
        'Answer': [
          {'text': 'Black', 'score': 10},
          {'text': 'Blue', 'score': 8},
          {'text': 'Green', 'score': 9},
          {'text': 'Yellow', 'score': 6},
          {'text': 'White', 'score': 7},
        ],
      },
      {
        'Question': 'What\'s your favorite game?',
        'Answer': [
          {'text': 'Football', 'score': 10},
          {'Text': 'Cricket', 'score': 9},
          {'text': 'Basketball', 'score': 8},
          {'text': 'Golf', 'score': 7},
        ]
      },
      {
        'Question': 'Which one is your favorite place?',
        'Answer': [
          {'text': 'Dhaka', 'score': 7},
          {'text': 'Sylhet', 'score': 10},
          {'text': 'Netrakona', 'score': 9},
          {'text': 'Mymensingh', 'score': 8},
        ]
      },
      {
        'Question': 'Who is your favorite player?',
        'Answer': [
          {'text': 'Messi', 'score': 9},
          {'text': 'Ronaldo', 'score': 8},
          {'text': 'Kaka', 'score': 7},
          {'text': 'Ronaldinho', 'score': 10},
        ]
      },
      {
        'Question': 'Which one is your favorite food?',
        'Answer': [
          {'text': 'Ice-cream', 'score': 7},
          {'text': 'Rice', 'score': 10},
          {'text': 'Egg', 'score': 9},
          {'text': 'Chicken', 'score': 8},
        ]
      },
      {
        'Question': 'Which one is your favorite device?',
        'Answer': [
          {'text': 'Mobile', 'score': 8},
          {'text': 'Computer', 'score': 9},
          {'text': 'Laptop', 'score': 10},
          {'text': 'Music player', 'score': 7},
        ]
      },
      {
        'Question': 'Which one is your favorite brand?',
        'Answer': [
          {'text': 'Nokia', 'score': 8},
          {'text': 'Samsung', 'score': 9},
          {'text': 'Walton', 'score': 7},
          {'text': 'Apple', 'score': 10},
        ]
      },
      {
        'Question': 'Which one is your favorite movie?',
        'Answer': [
          {'text': 'Adam project', 'score': 7},
          {'text': 'Titanic', 'score': 10},
          {'text': 'End Game', 'score': 9},
          {'text': 'Perfume', 'score': 8},
        ]
      },
      {
        'Question': 'Which year you like most?',
        'Answer': [
          {'text': '2019', 'score': 8},
          {'text': '2020', 'score': 7},
          {'text': '2021', 'score': 6},
          {'text': '2022', 'score': 5},
        ]
      },
      {
        'Question': 'Who is best actor in the world?',
        'Answer': [
          {'text': 'Denzel Washington', 'score': 7},
          {'text': 'Brad Pitt', 'score': 8},
          {'text': 'Leonardo DiCaprio', 'score': 10},
          {'text': 'Tom Cruise', 'score': 9},
        ]
      },
      {
        'Question': 'Who is the best actress in hollywood?',
        'Answer': [
          {'text': 'Kate Winslet', 'score': 10},
          {'text': 'Charlize Theron', 'score': 8},
          {'text': 'Keira Knightley', 'score': 9},
          {'text': 'Megan Fox', 'score': 7},
        ]
      },
      {
        'Question': 'Which one is the best tv series in the world?',
        'Answer': [
          {'text': 'Dark', 'score': 7},
          {'text': 'Chernobyl', 'score': 8},
          {'text': 'Asur', 'score': 10},
          {'text': 'Mirzapur', 'score': 9}
        ]
      },
      {
        'Question': 'Who is the best singer in hollywood?',
        'Answer': [
          {'text':'Rihanna'},
          {'text':'Imagine Dragons'},
          {'text':'The Chainsmokers'},
          {'text':'The Weeknd'}
        ]
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
        body: _questionIndex < _questions.length
            ? QuizStore(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(
          _totalScore,
        ),
      ),
    );
  }
}
