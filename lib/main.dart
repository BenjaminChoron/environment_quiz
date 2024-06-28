import 'package:environment_quiz/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [Colors.blue, Colors.green],
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(40),
              child: Text('Hello, World!'),
            ),
          ),
        ),
      ),
    );
  }
}
