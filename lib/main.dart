import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
            Text("The question"),
            ElevatedButton(onPressed: () => {}, child: Text("Answer1")),
            ElevatedButton(onPressed: () => {}, child: Text("Answer2")),
            ElevatedButton(onPressed: () => {}, child: Text("Answer3")),
          ],
        ),
      ),
    );
  }
}
