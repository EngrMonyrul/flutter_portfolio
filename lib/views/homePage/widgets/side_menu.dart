import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled6/views/homePage/widgets/skills_area.dart';
import 'package:untitled6/views/homePage/widgets/social_media_area.dart';

import '../../../controllers/constants/constants.dart';
import 'animated_progress_bar.dart';
import 'area_info_text.dart';
import 'coding_skills_area.dart';
import 'download_button.dart';
import 'knowledge_area.dart';
import 'my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(
        children: [
          MyInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  AreaInfoText(title: 'Residential', text: 'Bangladesh'),
                  AreaInfoText(title: 'City', text: 'Dhaka'),
                  AreaInfoText(title: 'Age', text: '24'),
                  Divider(),
                  SkillsArea(),
                  SizedBox(height: defaultPadding),
                  Divider(),
                  CodingSkillsArea(),
                  SizedBox(height: defaultPadding),
                  Divider(),
                  KnowledgeArea(),
                  SizedBox(height: defaultPadding),
                  Divider(),
                  DonwloadButton(),
                  SocialMedia(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
