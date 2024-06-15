import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen.dart';
import 'screens/progress_widget_screen.dart';
import 'screens/card_widget_screen.dart';
import 'screens/quiz_widget_screen.dart';
import 'providers/quiz_provider.dart';
import 'providers/progress_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => QuizProvider()),
        ChangeNotifierProvider(create: (context) => ProgressProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custom Widgets App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/progress': (context) => const ProgressWidgetScreen(),
        '/card': (context) => const CardWidgetScreen(),
        '/quiz': (context) => const QuizWidgetScreen(),
      },
    );
  }
}
