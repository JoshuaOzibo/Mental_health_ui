import 'package:mental_health_mobile_app/features/home_page/components/app_bar.dart';
import 'package:mental_health_mobile_app/features/home_page/components/feelings_button.dart';
import 'package:flutter/material.dart';
import 'package:mental_health_mobile_app/features/recommended_mood_page/components/feelingsCard.dart';
import 'package:mental_health_mobile_app/features/recommended_mood_page/components/selected_feelings_button.dart';
import '../../../core/static/data.dart';

class RecommendedMoodPage extends StatelessWidget {
  const RecommendedMoodPage({super.key, required this.selected});
  final String selected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarSection(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            FellingsButton(
              trailing: SelectedFeelingsButton(feeling: selected),
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

            Expanded(
              child: ListView.separated(
                itemCount: data.length,
                separatorBuilder: (context, index) => SizedBox(height: 20),
                itemBuilder: (context, index) {
                  final item = data[index];
                  return FellingsCard(
                    paragraphOne: item['paragraphOne']!,
                    heading: item['heading']!,
                    paragraphTwo: item['paragraphTwo']!,
                    image: item['image']!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
