import 'package:flutter/material.dart';
import '../../../core/colors/nova_colors.dart';
import '../../../core/static/data.dart';
import 'card_ui.dart';

class PracticesUi extends StatelessWidget {
  const PracticesUi({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 0.9,
            ),
          
            itemCount: practiceData.length,
            itemBuilder: (context, index){
              final data = practiceData[index];
              return CardUI(
                color: data['color'] == "NovaColors.meditationGreen" ? NovaColors.meditationGreen
                : data['color'] == "NovaColors.positiveFocusPeach," ? NovaColors.positiveFocusPeach
                : data['color'] == "NovaColors.wakeUpBlue" ? NovaColors.wakeUpBlue
                : data['color'] == "NovaColors.mindfulnessLightGreen" ? NovaColors.mindfulnessLightGreen
                : data['color'] == "const Color.fromARGB(255, 218, 255, 153)" ? const Color.fromARGB(255, 218, 255, 153)
                : const Color.fromARGB(255, 176, 255, 255),
                practice: data['practice']!,
                time: data['time']!,
              );
            }
           
          ),

          SizedBox(height: 20),
        ],
      ),
    );
  }
}
