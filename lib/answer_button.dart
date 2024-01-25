import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answerText, required this.onPressed});
  final String answerText;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: const BoxConstraints(minWidth: 360),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 10),
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromARGB(255, 0, 32, 87)),
            onPressed: onPressed,
            child: Text(
              answerText,
              textAlign: TextAlign.center,
            )));
  }
}
