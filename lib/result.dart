import 'package:flutter/material.dart';
import 'package:flutter_application_2/summary.dart';
import 'data/questions.dart';

class Result extends StatelessWidget {
  const Result(this.selectedAnswer, this.restart, {super.key});
  final List<String> selectedAnswer;
  final void Function() restart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < selectedAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].ansewrs[0],
        'user_answer': selectedAnswer[i]
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    var numOfCorrectAnswers = 0;

    for (var element in summaryData) {
      if (element['user_answer'] == element['correct_answer']) {
        numOfCorrectAnswers += 1;
      }
    }

    // int numOfCorrectAnswers = summaryData.where((element) => element['user_answer] == element['correct_answer]).length

    return Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 20.0), // Ajustez la valeur selon vos besoins
          child: Center(
              child: Text(
                  'You answered $numOfCorrectAnswers out of ${questions.length} questions correctly !',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 21,
                      color: Colors.black,
                      fontWeight: FontWeight.w700)))),
      const SizedBox(height: 20),
      Summary(getSummaryData()),
      const SizedBox(height: 20),
      TextButton.icon(
          style: TextButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.blueAccent,
              elevation: 25,
              padding: const EdgeInsets.all(15)),
          onPressed: restart,
          icon: const Icon(Icons.restart_alt_outlined),
          label: const Text("Restart The Quiz !"))
    ]));
  }
}
