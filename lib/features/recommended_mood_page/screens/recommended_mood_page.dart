import 'package:mental_health_mobile_app/features/home_page/components/feelings_button.dart';
import 'package:flutter/material.dart';

class RecommendedMoodPage extends StatelessWidget {
  const RecommendedMoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
            FellingsButton(
                onPressed: () => {},
                text: 'How are you feeling today?',
               
              ),
        ],
      ),
    );
  }
}