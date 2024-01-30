import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../controllers/constants/constants.dart';

class knowledgeItem extends StatelessWidget {
  const knowledgeItem({
    super.key,
    required this.item,
  });

  final String item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/check.svg'),
          const SizedBox(width: defaultPadding / 2),
          Text(item),
        ],
      ),
    );
  }
}
