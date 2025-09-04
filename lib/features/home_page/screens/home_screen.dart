import 'package:flutter/material.dart';
import 'package:mental_health_mobile_app/features/home_page/components/feelings_button.dart';
import '../../../core/colors/nova_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NovaColors.backgroundLight,
      appBar: AppBar(
        leadingWidth: 300,
        toolbarHeight: 80,
        backgroundColor: NovaColors.backgroundLight,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 16, right: 8),
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: NovaColors.green,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.person, color: NovaColors.iconGray),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi, Einstein',
                  style: TextStyle(color: NovaColors.primaryText, fontSize: 12),
                ),
                Text(
                  'Let\'s lift your mood',
                  style: TextStyle(color: NovaColors.primaryText, fontSize: 12),
                ),
              ],
            ),
          ],
        ),

        actions: [
          Container(
            margin: EdgeInsets.only(right: 16),
            // padding: EdgeInsets.symmetric(horizontal: 13, vertical: 18),
            width: 55,
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(color: NovaColors.iconGray),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Icon(Icons.notifications_none_outlined, size: 25),
                  Positioned(
                    right: 1,
                    top: -3,
                    child: Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 227, 15, 0),
                        shape: BoxShape.circle,
                      ),
              
                      child: Text(
                        '3',
                        style: TextStyle(fontSize: 10, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            FellingsButton(
              onPressed: () => {},
              text: 'How are you feeling today?',
              fellings: '😊',
            ),
            Center(
              child: Text(
                'Home Screen',
                style: TextStyle(color: NovaColors.primaryText),
              ),
            ),
          ],






          // SizedBox(height: 16 );
        ),
      ),
    );
  }
}
