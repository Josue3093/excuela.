import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const CardWidget({super.key, 
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(image),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(description),
          ),
          ButtonBar(
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Anterior'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Siguiente'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
