import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 6},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 5},
        {'text': 'Snake', 'score': 5},
        {'text': 'Elephant', 'score': 4},
        {'text': 'Lion', 'score': 7}
      ]
    },
    {
      'questionText': 'What\'s your favorite car?',
      'answers': [
        {'text': 'BMW', 'score': 10},
        {'text': 'BMW', 'score': 10},
        {'text': 'BMW', 'score': 10},
        {'text': 'BMW', 'score': 10}
      ]
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQeustion(int score) {
    _totalScore = _totalScore + score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My First App"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQeustion: _answerQeustion,
                  questions: _questions,
                  questionIndex: _questionIndex,
                )
              : Result(_totalScore)),
    );
  }
}
