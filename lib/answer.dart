import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandle;
  final String answerText;
  const Answer(this.selectHandle, this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHandle,
        style: ElevatedButton.styleFrom(primary: Colors.blue),
        child: Text(answerText),
      ),
    );
  }
}
