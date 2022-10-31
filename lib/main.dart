import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final _questions = [
    {
      'questionText': 'what is your favorite color?',
      'answer': [
        {'text': 'blue', "score": 10},
        {'text': 'red', "score": 8},
        {'text': 'red', "score": 6},
      ]
    },
    {
      'questionText': 'what is your favorite animal?',
      'answer': [
        {'text': 'crocodile', "score": 10},
        {'text': 'lionile', "score": 8},
        {'text': 'zebra', "score": 0},
      ]
    },
    {
      'questionText': 'what is your favorite car?',
      'answer': [
        {'text': 'mercedes', "score": 10},
        {'text': 'bmw', "score": 8},
        {'text': 'tiguan', "score": 0},
      ]
    },
  ];

  var _totalScore = 0;
  void _AnswerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Quiz App"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _AnswerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalScore)),
    );
  }
}
