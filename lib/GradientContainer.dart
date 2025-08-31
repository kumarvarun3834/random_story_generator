// import 'package:flutter/material.dart';
// import 'package:diceroll/ButtonsTemplate.dart';
// import 'package:diceroll/ImageContainer.dart';
// import 'package:diceroll/globals.dart' as global;
//
// class GradientContainer extends StatelessWidget {
//   GradientContainer(this.colour, {super.key});
//   final List<Color> colour;
//   @override
//   Widget build(context) {
//
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colour,
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children:[
//           ImageContainer("assets/images/dice-"+global.numberf.toString()+".png"),
//           SizedBox(height: 50), // space between image and text
//           // TextContainer("Roll Dice"),
//           Positioned(child: ButtonsTemplate())
//         ],
//       ),
//     );
//   }
// }
//
import 'package:flutter/material.dart';
import 'package:random_story_generator/ButtonsTemplate.dart';
import 'package:random_story_generator/globals.dart' as global;
import 'package:random_story_generator/RandomNumberSelect.dart';
import 'package:random_story_generator/TextContainer.dart';

class GradientContainer extends StatefulWidget {
  const GradientContainer(this.colour, {super.key});
  final List<Color> colour;

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  void updateDice() {
    setState(() {
      global.numberf = RandomNumberSelect(1, 6).result;
    });
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: widget.colour,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // ImageContainer("assets/images/dice-${global.numberf}.png"),
          TextContainer("${global.numberf}", Colors.black, 30),
          const SizedBox(height: 50),
          ButtonsTemplate(onPressed: updateDice),
        ],
      ),
    );
  }
}
