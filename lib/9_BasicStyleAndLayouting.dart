import 'package:flutter/material.dart';

import './9a_BasicStylingAndLayouting.dart';

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
    var questions = ['What is your name?', 'What is your age?'];

    return (MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Cool App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Text('Jump to Next Question'),
              onPressed: nextQuestion,
            ),
          ],
        ),
      ),
    ));
  }
}
