import 'package:flutter/material.dart';
import '12c_SplitMainQuizAppQuiz.dart';
import '12d_SplitMainQuizAppResult.dart';

void main() => runApp(MyCoolApp());

class MyCoolApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyCoolAppState();
  }
}

class _MyCoolAppState extends State<MyCoolApp> {
  var _questionIndex = 0;

  void _nextQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
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
        body: _questionIndex < _questions.length
            ? Quiz(
                questionIndex: _questionIndex,
                questions: _questions,
                nextQuestion: _nextQuestion,
              )
            : Result(),
      ),
    ));
  }
}
