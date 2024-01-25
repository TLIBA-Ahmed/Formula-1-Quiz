import 'package:flutter/material.dart';

class Summary extends StatelessWidget {
  const Summary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ...summaryData.map((e) => Column(children: [
                  Row(
                    children: [
                      const SizedBox(width: 3),
                      CircleAvatar(
                          radius: 12,
                          foregroundColor: Colors.white,
                          backgroundColor:
                              e['user_answer'] == e['correct_answer']
                                  ? const Color.fromARGB(255, 4, 107, 25)
                                  : Colors.red,
                          child: Text(
                              ((e['question_index'] as int) + 1).toString())),
                      const SizedBox(width: 14),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(e['question'].toString(),
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              )),
                          const SizedBox(height: 1),
                          Text(e['user_answer'].toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              )),
                          const SizedBox(height: 1),
                          Text(e['correct_answer'].toString(),
                              style: const TextStyle(
                                color: Color.fromARGB(255, 2, 8, 80),
                                fontWeight: FontWeight.w600,
                              )),
                          const SizedBox(height: 12),
                        ],
                      )),
                    ],
                  ),
                  const SizedBox(height: 10)
                ]))
          ],
        ),
      ),
    );
  }
}
