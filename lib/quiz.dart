import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int qIndex;
  final Function ansQuestion;
  Quiz({
    @required this.question,
    @required this.qIndex,
    @required this.ansQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question[qIndex]['question']),
        ...(question[qIndex]['answer'] as List<Map<String, Object>>).map((ans) {
          return Answer(() => ansQuestion(ans['score']), ans['text']);
        }).toList()
      ],
    );
  }
}
