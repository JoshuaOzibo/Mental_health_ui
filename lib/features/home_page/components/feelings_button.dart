import 'package:flutter/material.dart';
import '../../../core/colors/nova_colors.dart';

class FellingsButton extends StatelessWidget {
  const FellingsButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.icon
  });

  final VoidCallback onPressed;
  final String text;
  final icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle button tap
        onPressed();
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        width: double.infinity,
        decoration: BoxDecoration(
          color: NovaColors.iconGray.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(9),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 249, 249, 249),
                    shape: BoxShape.circle,
                  ),
                  child: Text('😊', style: TextStyle(fontSize: 24)),
                ),
                SizedBox(width: 8),
                Text(
                  text,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 102, 102, 102),
                    fontSize: 16,
                  ),
                ),
              ],
            ),

            Icon(icon, color: NovaColors.iconGray, size: 20),
          ],
        ),
      ),
    );
  }
}
