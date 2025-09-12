import 'package:flutter/material.dart';
import '../../../core/colors/nova_colors.dart';

class FellingsButton extends StatelessWidget {
  const FellingsButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.emoji,
    this.trailing,
  });

  final VoidCallback onPressed;
  final String text;
  final String? emoji;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 13),
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
                if (emoji != null && emoji!.isNotEmpty)
                  Container(
                    padding: const EdgeInsets.all(9),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 249, 249, 249),
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      emoji!,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                const SizedBox(width: 8),
                Text(
                  text,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 102, 102, 102),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            trailing ?? const SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}
