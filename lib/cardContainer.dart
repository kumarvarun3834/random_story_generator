import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  const CardContainer(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: Colors.black87,
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.italic,
            color: Colors.amberAccent,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
