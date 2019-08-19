import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _question = const [
    {
      'question': 'What animal do you like?',
      'answer': [
        {'text': 'Lion', 'score': 35},
        {'text': 'Tiger', 'score': 20},
        {'text': 'Dragon', 'score': 40},
        {'text': 'Snake', 'score': 5}
      ]
    },
    {
      'question': 'Where do you live?',
      'answer': [
        {'text': 'Yangon', 'score': 40},
        {'text': 'Myeik', 'score': 10},
        {'text': 'Dawei', 'score': 10},
        {'text': 'Mandalay', 'score': 40}
      ]
    },
    {
      'question': 'Which colour do you like best?',
      'answer': [
        {'text': 'Red', 'score': 10},
        {'text': 'Pink', 'score': 25},
        {'text': 'Green', 'score': 25},
        {'text': 'White', 'score': 30},
        {'text': 'Blue', 'score': 10}
      ]
    },
  ];
  var _qIndex = 0;
  var _totalScore = 0;

  void resetQuiz() {
    setState(() {
      _qIndex = 0;
      _totalScore = 0;
    });
  }

  void _ansQuestion(int score) {
    _totalScore += score;
    setState(() {
      ++_qIndex;
    });

    print('index is $_qIndex');
  }

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _qIndex < _question.length
            ? Quiz(
                ansQuestion: _ansQuestion,
                qIndex: _qIndex,
                question: _question,
              )
            : Result(_totalScore, resetQuiz),
      ),
    );
  }
}
