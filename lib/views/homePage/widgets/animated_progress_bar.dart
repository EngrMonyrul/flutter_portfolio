import 'package:flutter/material.dart';

import '../../../controllers/constants/constants.dart';

class AnimatedProgressBar extends StatelessWidget {
  const AnimatedProgressBar({
    super.key,
    required this.label,
    required this.percentage,
  });

  final String label;
  final double percentage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percentage),
            duration: defaultDuration,
            builder: (context, double value, child) {
              return Stack(
                fit: StackFit.expand,
                children: [
                  CircularProgressIndicator(
                    color: primaryColor,
                    backgroundColor: bgColor,
                    value: value,
                  ),
                  Center(
                    child: Text(
                      '${(value * 100).toInt()}%',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        const SizedBox(height: defaultPadding / 2),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}
