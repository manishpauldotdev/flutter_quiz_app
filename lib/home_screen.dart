import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _questionIndex = 0;
  int _totalScore = 0;

  final List<Map<String, Object>> questions = const [
    {
      'question': 'What\'s your name?',
      'answer': [
        {'option': 'Manish', 'score': 10},
        {'option': 'Basob', 'score': 0},
        {'option': 'Mridul', 'score': 0},
      ],
    },
    {
      'question': 'What\'s your age?',
      'answer': [
        {'option': '25', 'score': 10},
        {'option': '30', 'score': 0},
        {'option': '24', 'score': 0},
      ],
    },
    {
      'question': 'Who\'s your crush?',
      'answer': [
        {'option': 'Flutter', 'score': 10},
        {'option': 'React', 'score': 0},
        {'option': 'Angular', 'score': 0},
      ],
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex +=
          1; // when an answer is chosen, the index of the question will get increased by 1 and will dynamically change the question
    });
    print(_questionIndex);
  }

  void reset() {
    _totalScore = 0;
    setState(() {
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
      ),
      body: _questionIndex < questions.length
          ? Quiz(questions, _questionIndex, _answerQuestion)
          : Result(reset, _totalScore),
    );
  }
}
