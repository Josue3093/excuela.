import 'package:flutter/material.dart';
import '../widgets/quiz_widget.dart';

class QuizWidgetScreen extends StatelessWidget {
  const QuizWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: QuizWidget(),
    );
  }
}
