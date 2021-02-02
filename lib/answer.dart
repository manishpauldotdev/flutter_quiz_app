import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _answerQuestionHandler;
  final String _answerText;
  Answer(this._answerQuestionHandler, this._answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(8.0),
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(_answerText,),
        onPressed: _answerQuestionHandler,
      ),
    );
  }
}
