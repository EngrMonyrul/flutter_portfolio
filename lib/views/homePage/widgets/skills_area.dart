import 'package:flutter/material.dart';

import '../../../controllers/constants/constants.dart';
import 'animated_progress_bar.dart';

class SkillsArea extends StatelessWidget {
  const SkillsArea({
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
            'Skills',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const Row(
          children: [
            Expanded(
              child: AnimatedProgressBar(label: 'Flutter', percentage: 0.8),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedProgressBar(label: 'Firebase', percentage: 0.6),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedProgressBar(label: 'Django', percentage: 0.8),
            ),
          ],
        ),
        const SizedBox(height: defaultPadding),
        const Row(
          children: [
            Expanded(
              child: AnimatedProgressBar(label: 'Kotlin', percentage: 0.01),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedProgressBar(label: 'Java/Xml', percentage: 0.05),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedProgressBar(label: 'RESTApi', percentage: 0.9),
            ),
          ],
        ),
      ],
    );
  }
}
