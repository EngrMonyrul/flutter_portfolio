import 'package:flutter/material.dart';

import '../../../controllers/constants/constants.dart';

class AnimatedLinearProgress extends StatelessWidget {
  const AnimatedLinearProgress({
    super.key,
    required this.label,
    required this.percentage,
  });

  final String label;
  final double percentage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Column(
        children: [
          TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percentage),
            duration: defaultDuration,
            builder: (context, value, child) {
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        label,
                        style: const TextStyle(color: Colors.white),
                      ),
                      Text('${(value * 100).toInt()}%'),
                    ],
                  ),
                  const SizedBox(height: defaultPadding / 2),
                  LinearProgressIndicator(
                    color: primaryColor,
                    backgroundColor: bgColor,
                    value: value,
                  ),
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
