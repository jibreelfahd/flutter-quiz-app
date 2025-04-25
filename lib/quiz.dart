import 'package:flutter/material.dart';

import 'package:flutter_apps/start_screen.dart';
import 'package:flutter_apps/question_screen.dart';
import 'package:flutter_apps/data/questions.dart';
import 'package:flutter_apps/result_screen.dart';

class QuizWidget extends StatefulWidget {
  const QuizWidget({super.key});

  @override
  State<QuizWidget> createState() {
    return _QuizWidget();
  }
}

class _QuizWidget extends State<QuizWidget> {
  var activeScreen = 'start-screen';

  List<String> selectedAnswers = [];

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswers(selectedAnswer) {
    selectedAnswers.add(selectedAnswer);

    setState(() {
      if (selectedAnswers.length == questions.length) {
        selectedAnswers = [];
        activeScreen = 'result-screen';
      }
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionScreen(
        onSelectedAnswer: chooseAnswers,
      );
    }

    if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(choosenAnswers: selectedAnswers);
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
