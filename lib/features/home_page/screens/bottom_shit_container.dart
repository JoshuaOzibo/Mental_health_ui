import 'package:flutter/material.dart';
import 'package:mental_health_mobile_app/core/botton/bottom_shit_button.dart';
import 'package:mental_health_mobile_app/features/recommended_mood_page/screens/recommended_mood_page.dart';
import '../../../core/static/data.dart';

class BottomShitcontainer extends StatefulWidget {
  const BottomShitcontainer({super.key});

  @override
  State<BottomShitcontainer> createState() => _BottomShitcontainerState();
}

class _BottomShitcontainerState extends State<BottomShitcontainer> {
  String selected = "";
  String selectedEmoji = "";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'How are you feeling today?',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      width: 2,
                      color: const Color.fromARGB(255, 208, 208, 208),
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () => {Navigator.pop(context)},
                    child: Center(
                      child: Text(
                        'X',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              physics: NeverScrollableScrollPhysics(),
              children: feelings.map((item) {
                return BottomShitButton(
                  emoji: item['emoji']!,
                  text: item['text']!,
                  isSelected: selected == item['text']!,
                  onTap: () => setState(
                    () => (
                      selectedEmoji = item["emoji"]!,
                      selected = item["text"]!,
                    ),
                  ),
                );
              }).toList(),
            ),

            Spacer(),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 0, 72, 150),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SizedBox(
                      height: 500,
                      child: RecommendedMoodPage(
                        selected: selected,
                        selectedEmoji: selectedEmoji,
                      ),
                    ),
                  ),
                ),
                child: Text(
                  'Continue',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
