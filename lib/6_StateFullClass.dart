import 'package:flutter/material.dart';

void main() => runApp(MyCoolApp());

class MyCoolApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyCoolAppState();
  }
}

class MyCoolAppState extends State<MyCoolApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex += 1;
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
              questions[questionIndex],
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
