import 'package:flutter/material.dart';
import '13a_FinalScroreQuestion.dart';
import '13b_FinalScroreAnswer.dart';

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
        ...(questions[questionIndex]['answer'] as List<Map<String,Object>>).map((answer) {
          return Answer(() => nextQuestion(answer['score']), answer['text']);
        }).toList(),
      ],
    );
  }
}
