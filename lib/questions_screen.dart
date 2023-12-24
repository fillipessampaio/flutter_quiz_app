import "package:flutter/material.dart";
import "package:flutter_quiz_app/answer_button.dart";
import "package:flutter_quiz_app/data/questions.dart";

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  final currentQuestion = questions[0];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(
              color: Color.fromARGB(255, 179, 208, 233),
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          ...currentQuestion.getShuffledAnswers().map((e) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(18, 4, 16, 4),
              child: AnswerButton(answerText: e, onTap: () {}),
            );
          }),
        ],
      ),
    );
  }
}
