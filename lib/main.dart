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
    body:Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.indigo.shade900, Colors.black],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Center(child: Text(
        "Fantasy Story Generator",
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.purpleAccent,
          shadows: [
            Shadow(
              blurRadius: 10,
              color: Colors.purpleAccent,
              offset: Offset(0, 0),
            ),
          ],
        ),
      ),
        )
        ,
          GradientContainer()]
      )
  )
  )
    );
  }
}
