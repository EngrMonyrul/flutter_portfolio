import 'package:flutter/material.dart';
import 'package:untitled6/views/homePage/widgets/side_menu.dart';

import '../../../controllers/constants/constants.dart';
import 'knowledge_item.dart';

class KnowledgeArea extends StatelessWidget {
  const KnowledgeArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child:
          Text('Knowledge', style: Theme.of(context).textTheme.subtitle2),
        ),
        const knowledgeItem(item: 'Flutter, Dart'),
        const knowledgeItem(item: 'Provider State Management'),
        const knowledgeItem(item: 'BLoC State Management'),
        const knowledgeItem(item: 'RESTApi'),
        const knowledgeItem(item: 'SQFLite'),
        const knowledgeItem(item: 'MySQL'),
        const knowledgeItem(item: 'Clean Architecture'),
        const knowledgeItem(item: 'MVC Pattern'),
        const knowledgeItem(item: 'Native Items Implement'),
      ],
    );
  }
}
