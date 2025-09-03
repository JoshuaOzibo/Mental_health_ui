import 'package:flutter/material.dart';
import '../../../core/colors/nova_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NovaColors.backgroundLight,
      appBar: AppBar(
        leading: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 16),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: NovaColors.green,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.person, color: NovaColors.iconGray),
            ),

            Column(
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
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              border: Border.all(color: NovaColors.iconGray),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              children: [
                Icon(Icons.notifications, color: NovaColors.iconGray),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),

                    child: Text(
                      '3',
                      style: TextStyle(fontSize: 6, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Center(
              child: Text(
                'Home Screen',
                style: TextStyle(color: NovaColors.primaryText),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
