import 'package:flutter/material.dart';
import '../../../core/colors/nova_colors.dart';

class CardUI extends StatelessWidget {
  const CardUI({
    super.key,
    required this.color,
    required this.practice,
    required this.time,
    required this.iconData,
  });

  final Color color;
  final String practice;
  final String time;
  final IconData iconData;

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
            height: 55,
            width: 55,
            decoration: BoxDecoration(
              //const Color.fromARGB(255, 255, 226, 208), Color.fromARGB(255, 220, 232, 212),
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
            ),

            child: Center(
              child: Icon(iconData, size: 40, color: NovaColors.iconGray),
            ),
          ),

          SizedBox(height: 30),

          Text(
            practice,
            style: TextStyle(
              color: NovaColors.primaryText,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),

          SizedBox(height: 8),

          Text(
            time,
            style: TextStyle(
              color: const Color.fromARGB(255, 85, 85, 85),
              fontWeight: FontWeight.normal,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
