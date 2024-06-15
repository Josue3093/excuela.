import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/quiz_provider.dart';

class QuizWidget extends StatelessWidget {
  const QuizWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<QuizProvider>(
      builder: (context, quizProvider, child) {
        return ListView.builder(
          itemCount: quizProvider.quizzes.length,
          itemBuilder: (context, index) {
            final quiz = quizProvider.quizzes[index];
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(quiz.question, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    ...quiz.options.asMap().entries.map((entry) {
                      int optionIndex = entry.key;
                      String option = entry.value;
                      return RadioListTile(
                        title: Text(option),
                        value: optionIndex,
                        groupValue: quizProvider.selectedOptions[index],
                        onChanged: (value) {
                          quizProvider.selectOption(index, optionIndex);
                        },
                      );
                    }),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
