import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;

  final VoidCallback restartHandler;

  Result(this.totalScore, this.restartHandler);

  String get resultPhrase {
    return "The score is $totalScore";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Finished',
            style: TextStyle(
              fontSize: 50,
              color: Colors.blueGrey,
            ),
          ),
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 55,
              color: Colors.red,
            ),
          ),
          ElevatedButton(
            onPressed: restartHandler,
            child: Text("Restart Quiz"),
          ),
        ],
      ),
    );
  }
}
