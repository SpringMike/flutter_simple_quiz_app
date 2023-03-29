import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback restart;


  Result(this.totalScore, this.restart);

  String get getResultPhase {
    var text = "You did it!!";
    if (totalScore < 8) {
      text = "You are awesome";
    } else if (totalScore <= 12) {
      text = "You are pretty likable";
    } else if (totalScore < 15) {
      text = "You are strange...";
    } else {
      text = "You are so bad";
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            getResultPhase,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(onPressed: restart,child: Text("Restart Quiz"),)
        ],
      ),
    );
  }
}
