import 'package:flutter/material.dart';

import 'package:flutter_apps/answers_button.dart';
import 'package:flutter_apps/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            questions[0].questions,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswersButton(answerText: questions[0].answers[0], onClick: () {}),
          AnswersButton(answerText: questions[0].answers[1], onClick: () {}),
          AnswersButton(answerText: questions[0].answers[2], onClick: () {}),
          AnswersButton(answerText: questions[0].answers[3], onClick: () {}),
          AnswersButton(answerText: questions[0].answers[4], onClick: () {}),
        ],
      ),
    );
  }
}
