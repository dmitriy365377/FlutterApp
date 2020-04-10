import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQeustion() {
    print('Answer chosen!');
  }

  Widget build(BuildContext context) {
    var question = [
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
            Text('The question!'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQeustion,
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
