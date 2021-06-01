import 'package:flutter/material.dart';

void main() => runApp(MyCoolApp());

class MyCoolApp extends StatelessWidget {
  void answerQuestion() {
    print('Question Answered!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'My Cool App',
          ),
        ),
        body: Column(
          children: [
            Text('The Question 1'),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 Pressed'), //AnonymousFunction
            ),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                // ...
                print('Answer 3 Pressed');
              }, //AnonymousFunction
            ),
          ],
        ),
      ),
    );
  }
}
