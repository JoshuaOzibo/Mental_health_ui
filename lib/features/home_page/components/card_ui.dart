import 'package:flutter/material.dart';
import '../../../core/colors/nova_colors.dart';

class CardUI extends StatelessWidget {
  const CardUI({
    super.key,
    required this.color,
    required this.practice,
    required this.time,
  });

  final Color color;
  final String practice;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: NovaColors.cardBackground,
              borderRadius: BorderRadius.circular(100),
            ),

            child: Center(
              child: Icon(Icons.person, size: 40, color: NovaColors.iconGray),
            ),
          ),

          SizedBox(height: 40),

          Text(
            practice,
            style: TextStyle(
              color: NovaColors.primaryText,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 6),

          Text(
            time,
            style: TextStyle(
              color: NovaColors.primaryText,
              fontWeight: FontWeight.normal,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
