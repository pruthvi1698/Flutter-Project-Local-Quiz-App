import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function reset;
  Result(this.resultScore, this.reset);

// Getters
  String get resultPhrase {
    String resultText;
    if (resultScore <= 35) {
      resultText = 'You are awesome';
    } else if (resultScore <= 45) {
      resultText = 'Pretty Likeable';
    } else {
      resultText = 'You are great';
    }
    return resultText;
  }
// Getters End

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "\n" + resultPhrase + "\n" + 'Score:' + resultScore.toString(),
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text('Reset Quiz'),
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.blue)),
            onPressed: reset,
          ),
        ],
      ),
    );
  }
}
