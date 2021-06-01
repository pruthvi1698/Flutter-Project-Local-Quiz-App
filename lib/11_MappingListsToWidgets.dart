import 'package:flutter/material.dart';
import '11a_MappingListsToWidgetsQuestion.dart';
import '11b_MappingListsToWidgetsAnswer.dart';

void main() => runApp(MyCoolApp());

class MyCoolApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyCoolAppState();
  }
}

class _MyCoolAppState extends State<MyCoolApp> {
  var _questionIndex = 0;

  void nextQuestion() {
    setState(() {
      if (_questionIndex > 0) {
        _questionIndex = 0;
      } else
        _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'question': 'What is your favorite color?',
        'answer': ['black', 'red', 'white', 'pink'],
      },
      {
        'question': 'What is your favorite pet?',
        'answer': ['dog', 'cat', 'snake', 'squirrel'],
      },
    ];

    return (MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Cool App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['question'],
            ),
            ...(questions[_questionIndex]['answer'] as List<String>)
                .map((answer) {
              return Answer(nextQuestion, answer);
            }).toList(),
          ],
        ),
      ),
    ));
  }
}
