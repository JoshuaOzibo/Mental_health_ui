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
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            color: NovaColors.cardBackground,

            child: Center(
              child: Icon(Icons.person, size: 40, color: NovaColors.iconGray),
            ),
          ),

          SizedBox(height: 12),

          Text(
            practice,
            style: TextStyle(
              color: NovaColors.primaryText,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),

          SizedBox(height: 8),

          Text(
            time,
            style: TextStyle(color: NovaColors.iconGray, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
