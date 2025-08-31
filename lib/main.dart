import 'package:flutter/material.dart';
import 'package:random_story_generator/GradientContainer.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // GradientContainer({super.key});
  // This widget is the root of your application.
  @override
  Widget build(context) {
  return MaterialApp(
  // home: Scaffold(body: Center(child: Text("here we go"))),
  home: Scaffold(
  body: GradientContainer([
    // Color.fromARGB(255, 255, 0, 0),
    Color.fromARGB(255, 255, 255, 255),
    Color.fromARGB(255, 255, 0, 0),
    Color.fromARGB(255, 255, 0, 0),
    Color.fromARGB(255, 255, 255, 255),
  ])
  ),
  );
  }
}
