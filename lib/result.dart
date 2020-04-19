import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    var resultText = 'You did it';
    if (resultScore  >= 16) {
      resultText = 'You are awesome brooooooooo';
    } else if (resultScore <= 15) {
      resultText = 'It`s ok';
    } else if (resultScore <= 10) {
      resultText = 'What happend bro?';
    } else {
      resultText = 'No way,bro';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
