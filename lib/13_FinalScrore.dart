import 'package:flutter/material.dart';
import '13c_FinalScroreQuiz.dart';
import '13d_FinalScroreResult.dart';

void main() => runApp(MyCoolApp());

class MyCoolApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyCoolAppState();
  }
}

class _MyCoolAppState extends State<MyCoolApp> {
  var _questionIndex = 0;
  var _finalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _finalScore = 0;
    });
  }

  void _nextQuestion(int score) {
    _finalScore += score;
    print(_finalScore);
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      {
        'question': 'What is your favorite color?',
        'answer': [
          {'text': 'black', 'score': 20},
          {'text': 'red', 'score': 30},
          {'text': 'white', 'score': 60},
          {'text': 'pink', 'score': 15},
        ],
      },
      {
        'question': 'What is your favorite pet?',
        'answer': [
          {'text': 'dog', 'score': 20},
          {'text': 'cat', 'score': 20},
          {'text': 'snake', 'score': 20},
          {'text': 'squirrel', 'score': 20},
        ],
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
            : Result(_finalScore,_resetQuiz),
      ),
    ));
  }
}
