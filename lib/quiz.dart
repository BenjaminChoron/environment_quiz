import 'package:environment_quiz/gradient_container.dart';
import 'package:environment_quiz/questions_screen.dart';
import 'package:environment_quiz/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(
      startQuiz: switchScreen,
    );
    super.initState();
  }

  void switchScreen() {
    setState(() => activeScreen = const QuestionsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: const [Colors.blue, Colors.green],
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: activeScreen,
            ),
          ),
        ),
      ),
    );
  }
}
