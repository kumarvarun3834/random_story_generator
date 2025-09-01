import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  const TextContainer(this.text ,{super.key});
  final String text;

  @override
  Widget build(context) {
    return  Text(
      text,
      style: TextStyle(
        fontSize: 18,
        fontStyle: FontStyle.italic,
        color: Colors.amberAccent,
      ),
      textAlign: TextAlign.center,
    );
  }}