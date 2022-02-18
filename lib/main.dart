import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp>{
  var _questionIndex = 0;

  void _answerQuestion(){
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'Which color would you prefer?',
      'Which film would you prefer?',
      'Which animal would you prefer as a pet?'
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: Column(
        children: <Widget>[
          Question(
              questions[_questionIndex]
          ),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: _answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: _answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer 3'),
            onPressed: _answerQuestion,
          ),
        ],
      ),
    ));
  }


}
