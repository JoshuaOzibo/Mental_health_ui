import 'package:mental_health_mobile_app/features/home_page/components/app_bar.dart';
import 'package:mental_health_mobile_app/features/home_page/components/feelings_button.dart';
import 'package:flutter/material.dart';
import 'package:mental_health_mobile_app/features/recommended_mood_page/components/feelingsCard.dart';
import 'package:mental_health_mobile_app/features/recommended_mood_page/components/selected_feelings_button.dart';
import '../../../core/colors/nova_colors.dart';

class RecommendedMoodPage extends StatelessWidget {
  const RecommendedMoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NovaColors.backgroundLight,
      appBar: AppBarSection(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            FellingsButton(
              trailing: SelectedFeelingsButton(),
              onPressed: () => {Navigator.pop(context)},
              text: 'You are feeling:',
            ),

            SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recommended for your mood',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 0, 72, 150),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            Column(
              spacing: 20,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FellingsCard(
                  image: 'assets/images/pexels-pixabay-158063.jpg',
                  paragraphOne: 'Meditation . 10 mins',
                  heading: 'Anchoring with the breath',
                  paragraphTwo: 'Jay Shetty',
                ),
                FellingsCard(
                  image: 'assets/images/pexels-pixabay-158063.jpg',
                  paragraphOne: 'Meditation . 10 mins',
                  heading: 'Anchoring with the breath',
                  paragraphTwo: 'Jay Shetty',
                ),
                FellingsCard(
                  image: 'assets/images/pexels-pixabay-158063.jpg',
                  paragraphOne: 'Meditation . 10 mins',
                  heading: 'Anchoring with the breath',
                  paragraphTwo: 'Jay Shetty',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
