import 'package:flutter/material.dart';

import 'package:flutter_apps/data/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({required this.choosenAnswers, super.key});

  final List<String> choosenAnswers;

  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < choosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].questions,
          'correct_answer': questions[i].answers[0],
          'user_answer': choosenAnswers[i],
        },
      );
    }

    return summary;
  }

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You answered X out Y questions correctly'),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  '1',
                  style: TextStyle(
                    color: Colors.black,
                    backgroundColor: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
