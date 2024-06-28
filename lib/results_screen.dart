import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.chosenAnswers, required this.onRestartQuiz});

  final List<String> chosenAnswers;
  final void Function() onRestartQuiz;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Quiz Results',
          style: GoogleFonts.concertOne(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 20),
        ...chosenAnswers.map((answer) {
          return Text(answer);
        }),
        const SizedBox(height: 40),
        ElevatedButton.icon(
          onPressed: onRestartQuiz,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            backgroundColor: Colors.white,
            foregroundColor: Colors.green,
          ),
          icon: const Icon(
            Icons.refresh,
            color: Colors.green,
          ),
          label: Text(
            'Restart Quiz',
            style: GoogleFonts.montserrat(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
