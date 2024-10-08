import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(134, 255, 255, 255),
          ),
          // Opacity(
          //   opacity: 0.5,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 300,
          //   ),
          // ),
          const SizedBox(height: 20),
          Text(
            'Learn Flutter the Fun Way!',
            style: GoogleFonts.lato(fontSize: 24, color: Colors.white),
          ),

          const SizedBox(height: 20),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            onPressed: startQuiz,
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Start Quiz'),
                SizedBox(width: 5),
                Icon(Icons.arrow_right_alt),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
