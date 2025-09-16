import 'package:flutter/material.dart';
import '../../../core/colors/nova_colors.dart';
import '../../../core/static/data.dart';
import 'card_ui.dart';

class PracticesUi extends StatelessWidget {
  const PracticesUi({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.only(bottom: 20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: 1.1,
      ),

      itemCount: practiceData.length,
      itemBuilder: (context, index) {
        final data = practiceData[index];
        return CardUI(
          color: data['color'] == "NovaColors.meditationGreen"
              ? NovaColors.meditationGreen
              : data['color'] == "NovaColors.positiveFocusPeach,"
              ? const Color.fromARGB(255, 230, 216, 174)
              : data['color'] == "NovaColors.wakeUpBlue"
              ? const Color.fromARGB(255, 161, 200, 240)
              : data['color'] == "NovaColors.mindfulnessLightGreen"
              ? const Color.fromARGB(255, 219, 236, 219)
              : data['color'] == "const Color.fromARGB(255, 218, 255, 153)"
              ? const Color.fromARGB(255, 253, 197, 242)
              : const Color.fromARGB(255, 183, 255, 255),
          practice: data['practice']!,
          time: data['time']!,
          iconData: data['icon']!,
        );
      },
    );

    // SizedBox(height: 20),
  }
}
