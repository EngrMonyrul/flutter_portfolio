import 'package:flutter/material.dart';

import '../../../controllers/constants/constants.dart';
import 'animated_linear_progress_bar.dart';

class CodingSkillsArea extends StatelessWidget {
  const CodingSkillsArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Coding Skills',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const AnimatedLinearProgress(label: 'Dart', percentage: 0.8),
        const AnimatedLinearProgress(label: 'Java', percentage: 0.8),
        const AnimatedLinearProgress(label: 'Python', percentage: 0.8),
        const AnimatedLinearProgress(label: 'HTML', percentage: 0.9),
        const AnimatedLinearProgress(label: 'CSS', percentage: 0.6),
        const AnimatedLinearProgress(label: 'JavaScript', percentage: 0.7),
        const AnimatedLinearProgress(label: 'Kotlin', percentage: 0.1),
        const AnimatedLinearProgress(label: 'C/C++', percentage: 0.8),
      ],
    );
  }
}
