import 'package:flutter/material.dart';

class ProgressProvider with ChangeNotifier {
  double _progress = 0.5; // Valor inicial del progreso

  double get progress => _progress;
// suma de valores 
  void increment() {
    if (_progress < 1.0) {
      _progress += 0.1;
      notifyListeners();
    }
  }
// resta de valores
  void decrement() {
    if (_progress > 0.0) {
      _progress -= 0.1;
      notifyListeners();
    }
  }
}
