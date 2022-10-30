import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void AnswerQuestion() {
    setState(() {
      questionIndex += 1;
    });
    print(questionIndex);
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
            Text(questions.elementAt(questionIndex)),
            ElevatedButton(onPressed: AnswerQuestion, child: Text("Answer1")),
            ElevatedButton(onPressed: AnswerQuestion, child: Text("Answer2")),
            ElevatedButton(onPressed: AnswerQuestion, child: Text("Answer3")),
          ],
        ),
      ),
    );
  }
}
