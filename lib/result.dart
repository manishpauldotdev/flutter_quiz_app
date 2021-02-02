import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function reset;
  final int finalScore;
  Result(this.reset, this.finalScore);

  String get resultPhrase {
    String resultText = 'Manish tera baap lgta hain';
    if (finalScore <= 10) {
      resultText = 'Terko ghanta pata hain kuch';
    } else if (finalScore == 20) {
      resultText = 'Thodi padhai or krle';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Quiz Over',
            style: TextStyle(fontSize: 28),
          ),
          Text(
            'You\'ve scored $finalScore',
            style: TextStyle(fontSize: 28),
          ),
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          FlatButton(
            onPressed: reset,
            child: Text('Reset'),
          ),
        ],
      ),
    );
  }
}
