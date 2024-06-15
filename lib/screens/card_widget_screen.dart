import 'package:flutter/material.dart';
import '../widgets/card_widget.dart';

class CardWidgetScreen extends StatelessWidget {
  const CardWidgetScreen({super.key});

// carta de presentación: imagen, estilo, titulo.

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CardWidget(
        image: 'https://cdn.pixabay.com/photo/2016/12/22/12/41/swimming-1925391_1280.jpg',
        title: 'Simple estilo',
        description: 'Esto es una simple demostracion de carta.',
      ),
    );
  }
}
