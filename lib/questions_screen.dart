import 'package:advance_basics/answer_button.dart';
import 'package:advance_basics/data/question.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  final currentQuestion = questions[0];

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(currentQuestion.text),
          const SizedBox(height: 30),
          ...currentQuestion.answers.map((item) {
            return AnswerButton(
              answerText: item,
              onTap: () {},
            );
          }),
        ],
      ),
    );
  }
}
