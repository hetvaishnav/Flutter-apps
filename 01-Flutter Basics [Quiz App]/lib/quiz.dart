import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import 'main.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionsIndex;
  final Answerquestioncallback answerquestion;
  const Quiz(
      {required this.questions,
      required this.questionsIndex,
      required this.answerquestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionsIndex]['question'] as String,
        ),
        ...(questions[questionsIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerquestion(answer['score'] as int),
              answer['text'] as String);
        }).toList(),
      ],
    );
  }
}
