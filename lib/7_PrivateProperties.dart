import 'package:flutter/material.dart';

void main() => runApp(_MyCoolApp());

class _MyCoolApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyCoolAppState();
  }
}

class _MyCoolAppState extends State<_MyCoolApp> {
  var _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['What is your name?', 'What is your age?'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'My Cool App',
          ),
        ),
        body: Column(
          children: [
            Text(
              questions[_questionIndex],
            ),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Text('Next Question'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
