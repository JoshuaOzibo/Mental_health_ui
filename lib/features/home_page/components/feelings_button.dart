import 'package:flutter/material.dart';
import '../../../core/colors/nova_colors.dart';

class FellingsButton extends StatelessWidget {
  const FellingsButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.fellings,
  });

  final VoidCallback onPressed;
  final String text;
  final String fellings;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      width: double.infinity,
      decoration: BoxDecoration(
        color: NovaColors.iconGray.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: GestureDetector(
        onTap: () {
          // Handle button tap
          onPressed();
        },
        child: Row(
          children: [
            Row(
              children: [
                Text(fellings, style: TextStyle(fontSize: 24)),
                SizedBox(width: 8),
                Text(
                  text,
                  style: TextStyle(color: NovaColors.primaryText, fontSize: 16),
                ),
              ],
            ),

            Icon(Icons.arrow_forward_ios, color: NovaColors.iconGray, size: 16),
          ],
        ),
      ),
    );
  }
}
