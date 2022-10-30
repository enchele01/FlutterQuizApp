import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

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
  final questions = [
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
        body: _questionIndex < questions.length
            ? Column(
                children: <Widget>[
                  Question(questions[_questionIndex]['questionText'] as String),
                  ...(questions[_questionIndex]['answer'] as List<String>)
                      .map((answer) {
                    return Answer(_AnswerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Column(
                  children: [
                    Text(
                      'Finished',
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.blueGrey,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _questionIndex = 0;
                        });
                      },
                      child: Text(
                        "Reset",
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    )
                  ],
                ),
              ),
      ),
    );
  }
}
