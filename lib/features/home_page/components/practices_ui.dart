import 'package:flutter/material.dart';
import 'card_ui.dart';

class PracticesUi extends StatelessWidget {
  const PracticesUi({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: [
        CardUI(
          color: Colors.blue,
          practice: 'Meditation',
          time: 'Meditation . 10 mins',
        ),
        CardUI(
          color: Colors.green,
          practice: 'Positive focus',
          time: 'Positive focus . 15 mins',
        ),
        CardUI(
          color: Colors.orange,
          practice: 'Wake up',
          time: 'Wake up . 6 hours',
        ),
        CardUI(
          color: Colors.purple,
          practice: 'Mindfulness',
          time: 'Mindfulness . 15 mins',
        ),
        CardUI(
          color: Colors.deepPurple,
          practice: 'Mindfulness',
          time: 'Mindfulness . 15 mins',
        ),
        CardUI(
          color: Colors.yellow,
          practice: 'Mindfulness',
          time: 'Mindfulness . 15 mins',
        ),
      ],
    );
  }
}
