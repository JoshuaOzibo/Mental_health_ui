import 'package:flutter/material.dart';
import 'package:mental_health_mobile_app/core/colors/nova_colors.dart';

class FellingsCard extends StatelessWidget {
  const FellingsCard({
    super.key,
    required this.paragraphOne,
    required this.heading,
    required this.paragraphTwo,
    required this.image,
  });

  final String paragraphOne;
  final String heading;
  final paragraphTwo;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: NovaColors.iconGray.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                height: 150,
                width: double.infinity,
              ),
            ),
          ),
          const SizedBox(width: 12),

          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    paragraphOne,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: NovaColors.secondaryText
                    ),
                  ),
                  const SizedBox(height: 14),
                  Text(
                    heading,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    paragraphTwo,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: NovaColors.secondaryText
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
