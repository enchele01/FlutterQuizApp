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
      'answer': ['blue', 'pink', 'red']
    },
    {
      'questionText': 'what is your favorite animal?',
      'answer': ['crocodile', 'tigri', 'lionaile']
    },
    {
      'questionText': 'what is your favorite car?',
      'answer': ['bugaii', 'mercedes', 'bmv']
    },
  ];

  void _AnswerQuestion() {
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
              : Result()),
    );
  }
}
