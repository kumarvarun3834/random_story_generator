import 'package:flutter/material.dart';
import 'package:random_story_generator/TextContainer.dart';

class ButtonsTemplate extends StatelessWidget {
  final VoidCallback onPressed;
  const ButtonsTemplate({required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurpleAccent,
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        shadowColor: Colors.purpleAccent,
        elevation: 15,
      ),
      child: Text("✨ Tell me a story ✨"),
    );
  }
}
