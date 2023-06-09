import 'package:flutter/material.dart';
import 'package:sample_project/question.dart';

import 'answer.dart';

class Quizz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function(int) answerQuestion;
  final int questionIndex;

  const Quizz( this.questions, this.answerQuestion, this.questionIndex,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'] as String,
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answerQuestion(answer['score'] as int), answer['text'] as String);
        }).toList()
      ],
    );
  }

}
