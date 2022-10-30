import 'package:flutter/material.dart';
import 'question.dart';

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

  void _AnswerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is tour fav color?',
      'Favorite Animal?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: Column(
          children: <Widget>[
            Question(questions.elementAt(_questionIndex)),
            ElevatedButton(onPressed: _AnswerQuestion, child: Text("Answer1")),
            ElevatedButton(onPressed: _AnswerQuestion, child: Text("Answer2")),
            ElevatedButton(onPressed: _AnswerQuestion, child: Text("Answer3")),
          ],
        ),
      ),
    );
  }
}
