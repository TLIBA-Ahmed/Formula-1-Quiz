import 'package:flutter/material.dart';
import 'package:flutter_application_2/answer_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'data/questions.dart';

class Question extends StatefulWidget {
  const Question(this.onSelectedAnswer, {super.key});

  final void Function(String) onSelectedAnswer;

  @override
  State<Question> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Question> {
  var currentQindex = 0;
  void answerQ(String answer) {
    widget.onSelectedAnswer(answer);
    setState(() {
      currentQindex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQ = questions[currentQindex];

    return Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
              child: Text(currentQ.text,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    fontSize: 21,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  )))),
      const SizedBox(height: 18),
      ...currentQ.getShuffledAnswers().map((e) {
        return Container(
            margin: const EdgeInsets.all(10),
            child: AnswerButton(
                answerText: e,
                onPressed: () {
                  answerQ(e);
                }));
      })
    ]));
  }
}
