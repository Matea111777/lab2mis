import 'package:flutter/material.dart';
import 'package:labmis2/screens/home_screen.dart';
import 'package:labmis2/screens/random_joke_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jokes',
      initialRoute: '/',
      routes: {
        '/' : (context) =>  HomeScreen(),
        '/randomjoke': (context) =>  RandomJokeScreen(),
      },
    );
  }
}