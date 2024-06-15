import 'package:flutter/material.dart';
import '../models/quiz_model.dart';

// formulario quiz optiones a editar..
class QuizProvider with ChangeNotifier {
  final List<QuizModel> _quizzes = [
    QuizModel(question: 'Que es Flutter?', options: ['SDK', 'Framework', 'Language', 'Library'], correctOption: 1),
    QuizModel(question: 'Quien desarrollo Dart?', options: ['Google', 'Facebook', 'Microsoft', 'Apple'], correctOption: 0),
  ];

  final List<int?> _selectedOptions = [null, null]; // Almacena las opciones seleccionadas por el usuario

  List<QuizModel> get quizzes => _quizzes;
  List<int?> get selectedOptions => _selectedOptions;

  void selectOption(int quizIndex, int optionIndex) {
    _selectedOptions[quizIndex] = optionIndex;
    notifyListeners();
  }
}
