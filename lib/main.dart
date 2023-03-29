import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['What is ur fav color?', 'What ur fav animals'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My first application'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            ElevatedButton(
                onPressed: answerQuestion, child: const Text("Answer 1")),
            ElevatedButton(
                onPressed: answerQuestion, child: const Text("Answer 2")),
            ElevatedButton(
                onPressed: answerQuestion, child: const Text("Answer 3")),
          ],
        ),
      ),
    );
  }
}
