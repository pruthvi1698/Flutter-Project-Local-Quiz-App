import 'package:flutter/material.dart';
import '12a_SplitMainQuizAppQuestion.dart';
import '12b_SplitMainQuizAppAnswer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function nextQuestion;
  final int questionIndex;

  Quiz({
    @required this.questions,
    @required this.nextQuestion,
    @required this.questionIndex,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['question'],
        ),
        ...(questions[questionIndex]['answer'] as List<String>).map((answer) {
          return Answer(nextQuestion, answer);
        }).toList(),
      ],
    );
  }
}
