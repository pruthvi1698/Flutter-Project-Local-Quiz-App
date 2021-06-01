import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function nextQuestionHandler;
  Answer(this.nextQuestionHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // ignore: deprecated_member_use
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text('Answer 1'),
        onPressed: nextQuestionHandler,
      ),
    );
  }
}
