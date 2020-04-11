import 'package:flutter/material.dart';

import './question.dart';

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
  var _questionIndex = 0;

  void _answerQeustion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: _answerQeustion,
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: () => print('Hello hr manager!'),
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: () {
                print('I will be Senior developer!');
              },
            ),
          ],
        ),
      ),
    );
  }
}
