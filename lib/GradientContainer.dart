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


// dataset
final List<Map<String, Object>> rules = [
  {
    "character": "A detective",
    "settings": [
      "in an ancient castle", "inside a haunted house", "in a city",
      "in a small village", "at a crime scene", "in a library",
      "at a museum", "on a moving train"
    ],
    "actions": [
      "solved a mystery", "followed a clue", "caught a thief",
      "uncovered a secret", "tracked down a suspect", "protected a witness",
      "decoded a message", "found missing evidence"
    ],
    "morals": [
      "Curiosity leads to adventure.", "Every detail matters.",
      "Truth always comes out.", "Patience brings clarity.",
      "Justice may be slow, but it wins.", "Never ignore small clues.",
      "Perseverance solves puzzles.", "Knowledge brings power."
    ],
  },
  {
    "character": "A pirate",
    "settings": [
      "at the beach", "on a flying ship", "in a jungle",
      "on a deserted island", "in a hidden cave", "at sea",
      "near a volcano", "in a bustling port"
    ],
    "actions": [
      "discovered hidden treasure", "sailed across the ocean",
      "tamed a wild parrot", "fought rival pirates", "escaped a storm",
      "mapped an island", "sang sea shanties", "buried gold"
    ],
    "morals": [
      "Teamwork makes the dream work.", "Greed leads to trouble.",
      "Bravery conquers fear.", "Freedom is priceless.",
      "The sea is both friend and foe.", "Respect builds loyalty.",
      "Adventures come with risks.", "Honor matters more than gold."
    ],
  },
  {
    "character": "A scientist",
    "settings": [
      "in a secret laboratory", "under the sea", "at the North Pole",
      "on Mars", "inside a volcano base", "in a space station",
      "in a futuristic city", "in the desert"
    ],
    "actions": [
      "invented a new gadget", "built a time machine",
      "made a surprising discovery", "created a cure", "tested a risky experiment",
      "discovered alien life", "built a robot", "proved a theory"
    ],
    "morals": [
      "Imagination can change the world.", "Every mistake teaches something new.",
      "Knowledge is power.", "Science must serve humanity.",
      "Curiosity opens doors.", "Discovery needs courage.",
      "Ethics matter in progress.", "Learning never stops."
    ],
  },
  {
    "character": "A wizard",
    "settings": [
      "in Paris", "in an ancient castle", "in a jungle",
      "on a mountain peak", "inside a magic forest", "by a crystal lake",
      "in a hidden tower", "at a grand library"
    ],
    "actions": [
      "cast a powerful spell", "found a magic key", "fought a dark force",
      "created a potion", "taught an apprentice", "summoned a creature",
      "protected a village", "opened a portal"
    ],
    "morals": [
      "Kindness makes magic happen.", "Power must be used wisely.",
      "Wisdom is the greatest magic.", "Light always beats darkness.",
      "True strength is compassion.", "Greed corrupts power.",
      "Patience strengthens spells.", "Knowledge is the key to mastery."
    ],
  },
  {
    "character": "A robot",
    "settings": [
      "in a futuristic city", "on a spaceship", "in a factory",
      "at a junkyard", "on the Moon", "in a laboratory",
      "inside a power plant", "at a robotics expo"
    ],
    "actions": [
      "learned to feel emotions", "built a new robot friend",
      "protected humans", "solved complex problems", "escaped malfunction",
      "upgraded itself", "joined a family", "saved its creator"
    ],
    "morals": [
      "Even machines can learn kindness.", "Friendship is universal.",
      "Change is possible for anyone.", "Logic and heart must balance.",
      "Technology should help life.", "Emotions give meaning.",
      "Unity makes progress.", "Identity is chosen, not given."
    ],
  },
  {
    "character": "A princess",
    "settings": [
      "in a royal palace", "in a magical garden", "at a grand ball",
      "in a hidden tower", "by a river", "in a forest cottage",
      "on a carriage ride", "at the marketplace"
    ],
    "actions": [
      "befriended a dragon", "escaped from danger", "saved her kingdom",
      "helped the poor", "solved a riddle", "united two kingdoms",
      "outsmarted an enemy", "broke a curse"
    ],
    "morals": [
      "True strength is kindness.", "Courage comes from the heart.",
      "Leadership is about care.", "Compassion makes a ruler great.",
      "Bravery comes in many forms.", "Humility wins respect.",
      "Helping others is true nobility.", "Wisdom beats beauty."
    ],
  },
  {
    "character": "A dragon",
    "settings": [
      "in a cave", "on a mountain", "in a fiery valley",
      "under the sea", "in a magical forest", "above the clouds",
      "at a volcano's edge", "in a hidden lair"
    ],
    "actions": [
      "guarded treasure", "befriended a human", "fought evil knights",
      "flew across the world", "shared its fire", "defended its eggs",
      "spoke ancient wisdom", "scared away invaders"
    ],
    "morals": [
      "Even the mighty can be gentle.", "Friendship breaks barriers.",
      "Power is not everything.", "Wisdom outlives strength.",
      "Trust is hard but worth it.", "Legends can be kind.",
      "Balance keeps harmony.", "Respect earns loyalty."
    ],
  },
  {
    "character": "An alien",
    "settings": [
      "on Mars", "in a UFO", "in a hidden base",
      "on Earth", "in a distant galaxy", "inside a space station",
      "at Area 51", "in a desert crater"
    ],
    "actions": [
      "met a human child", "shared alien technology", "searched for home",
      "helped save Earth", "explored planets", "taught new knowledge",
      "escaped government agents", "built a communication device"
    ],
    "morals": [
      "Differences make us stronger.", "Understanding leads to peace.",
      "Home is where love exists.", "Exploration is endless.",
      "Unity bridges worlds.", "Curiosity unites species.",
      "Trust builds friendships.", "Respect every culture."
    ],
  },
  {
    "character": "A superhero",
    "settings": [
      "in a big city", "on a rooftop", "inside a secret lair",
      "at a science expo", "in outer space", "in a stadium",
      "at a burning building", "inside a subway"
    ],
    "actions": [
      "saved the day", "stopped a villain", "rescued people",
      "used hidden powers", "trained a sidekick", "defended the weak",
      "faced inner fears", "unmasked the truth"
    ],
    "morals": [
      "With great power comes responsibility.", "Heroes are made by choices.",
      "Courage inspires others.", "Sacrifice is noble.",
      "Hope gives strength.", "Justice must be fair.",
      "Kindness is heroic too.", "Even heroes need help."
    ],
  },
  {
    "character": "A clown",
    "settings": [
      "in a circus", "at a birthday party", "in a park",
      "on a stage", "in a small town", "in a hospital ward",
      "at a school", "at a festival"
    ],
    "actions": [
      "made people laugh", "cheered up a sad child", "performed tricks",
      "spread happiness", "turned mistakes into fun", "juggled wildly",
      "tripped and made a joke", "painted funny faces"
    ],
    "morals": [
      "Laughter heals hearts.", "Happiness grows when shared.",
      "Even small joys matter.", "Smiles are contagious.",
      "Cheering others heals you too.", "Silliness has value.",
      "Joy breaks sadness.", "Playfulness is powerful."
    ],
  },
];


class GradientContainer extends StatefulWidget {
  const GradientContainer(this.colour, {super.key});
  final List<Color> colour;

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  void updateDice() {
    setState(() {
      Map<String,Object> curr_data   = rules[RandomNumberSelect(1, rules.length-1).result];

      global.charPart  = curr_data["character"] as String;
      global.settPart  = (curr_data["settings"] as List<String>)[RandomNumberSelect(1, (curr_data["settings"] as List<String>).length-1).result];
      global.actionPart    = (curr_data["actions"] as List<String>)[RandomNumberSelect(1, (curr_data["actions"] as List<String>).length-1).result];
      global.moralPart   = (curr_data["morals"] as List<String>)[RandomNumberSelect(1, (curr_data["morals"] as List<String>).length-1).result];
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

          if (global.charPart != "NaN")
            TextContainer(global.charPart, Colors.black, 30),
          if (global.settPart != "NaN")
          TextContainer(global.settPart, Colors.black, 30),
          if (global.actionPart != "NaN")
          TextContainer(global.actionPart, Colors.black, 30),
          if (global.moralPart != "NaN")
          TextContainer(global.moralPart, Colors.black, 30),
          const SizedBox(height: 50),
          ButtonsTemplate(onPressed: updateDice),
        ],
      ),
    );
  }
}
