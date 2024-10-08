import 'package:advance_basics/question_sumamry.dart';
import 'package:flutter/material.dart';

import '../data/question.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.chosenAnswers, required this.onRestart});

  final List<String> chosenAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final numberOfQuestions = questions.length;
    final numberOfCorrectAnswers = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'You answered $numberOfCorrectAnswers out of $numberOfQuestions questions correctly!'),
            const SizedBox(height: 30),
            QuestionSummary(summaryData: summaryData),
            const SizedBox(height: 30),
            TextButton(
              style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(color: Colors.white)
                  ),
              ),
              onPressed: onRestart,
              child: const Text('Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
