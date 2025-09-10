import 'package:mental_health_mobile_app/features/home_page/components/feelings_button.dart';
import 'package:flutter/material.dart';
import 'package:mental_health_mobile_app/features/recommended_mood_page/components/feelingsCard.dart';

class RecommendedMoodPage extends StatelessWidget {
  const RecommendedMoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          FellingsButton(
            icon: Icons.arrow_forward_ios,
            onPressed: () => {},
            text: 'How are you feeling today?',
          ),

          Row(children: [Text('Recommended for your mood'), Text('See all')]),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FellingsCard(
                paragraphOne: 'Meditation . 10 mins',
                heading: 'Anchoring with the breath',
                paragraphTwo: 'Jay Shetty',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
