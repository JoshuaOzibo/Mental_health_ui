import 'package:flutter/material.dart';
import '../../../core/colors/nova_colors.dart';
import 'card_ui.dart';

class PracticesUi extends StatelessWidget {
  const PracticesUi({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 0.9
        ),
        children: [
          CardUI(
            color: NovaColors.meditationGreen,
            practice: 'Meditation',
            time: 'Meditation . 10 mins',
          ),
          CardUI(
            color: NovaColors.positiveFocusPeach,
            practice: 'Positive focus',
            time: 'Positive focus . 15 mins',
          ),
          CardUI(
            color: NovaColors.wakeUpBlue,
            practice: 'Wake up',
            time: 'Wake up . 6 hours',
          ),
          CardUI(
            color: NovaColors.mindfulnessLightGreen,
            practice: 'Mindfulness',
            time: 'Mindfulness . 15 mins',
          ),
          CardUI(
            color: const Color.fromARGB(255, 218, 255, 153),
            practice: 'Mindfulness',
            time: 'Mindfulness . 15 mins',
          ),
          CardUI(
            color: const Color.fromARGB(255, 176, 255, 255),
            practice: 'Mindfulness',
            time: 'Mindfulness . 15 mins',
          ),
        ],
      ),
    );
  }
}
