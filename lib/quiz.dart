import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int _questionIndex;
  final Function _answerQuestionHandler;
  Quiz(this.questions, this._questionIndex, this._answerQuestionHandler,);
  @override
  Widget build(BuildContext context) {
    return Column(
              children: [
                Question(questions[_questionIndex]['question']),
                ...(questions[_questionIndex]['answer'] as List<Map<String, Object>>)
                    .map((e) => Answer(() => _answerQuestionHandler(e['score']), e['option']))
                    .toList(),
              ],
            );
  }
}