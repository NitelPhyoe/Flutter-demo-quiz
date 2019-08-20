import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetHandler;
  final int resultScore;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    double percent = (resultScore / 300) * 100;
    if (percent <= 10) {
      resultText = 'You are Strange!...🤨';
    } else if (percent <= 30) {
      resultText = 'You are likeable...🤔';
    } else if (percent <= 50) {
      resultText = 'You are awesome!...😎';
    } else if (percent <= 80) {
      resultText = 'You are innconet...😊';
    } else {
      resultText = 'your are God!...👼';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          FlatButton(
            child: Text(
              'Restart Quiz!',
              style: TextStyle(color: Colors.blue),
            ),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
