import '../../../core/colors/nova_colors.dart';

import 'package:flutter/material.dart';

class SelectButton extends StatelessWidget {
  const SelectButton({super.key, required this.emoji, required this.text});

  final String emoji;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: NovaColors.wakeUpBlue,
      ),
      child: Column(
        children: [
          Text(emoji, style: TextStyle(fontSize: 20)),
          Text(
            text,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
