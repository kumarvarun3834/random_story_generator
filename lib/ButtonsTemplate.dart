import 'package:flutter/material.dart';
import 'package:random_story_generator/TextContainer.dart';

class ButtonsTemplate extends StatelessWidget {
  final VoidCallback onPressed;
  const ButtonsTemplate({required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Center(child: TextContainer("Regenerate", Colors.black, 30),)
    );
  }
}
