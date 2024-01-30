import 'package:flutter/material.dart';

import '../../models/projects_model.dart';
import '../../models/recommand_model.dart';

/*---------------------> Colors Constants <----------------------*/
const primaryColor = Color(0xFFFFC107);
const secondaryColor = Color(0xFF242430);
const darkColor = Color(0xFF191923);
const bodyTextColor = Color(0xFF8B8B8D);
const bgColor = Color(0xFF1E1E28);

/*---------------------> Others Constants <----------------------*/
const defaultPadding = 20.0;
const defaultDuration = Duration(seconds: 1);
const maxWidth = 1440.0;

/*---------------------> Projects List <----------------------*/
List<ProjectModel> projects = List.generate(
  20,
  (index) => ProjectModel(
    title: 'Project Title $index',
    description: 'Project Description $index',
  ),
);

/*---------------------> Recommend List <----------------------*/
List<RecommandModel> recommands = List.generate(
  20,
  (index) => RecommandModel(
    name: 'ABC $index',
    source: 'YT $index',
    message: 'Hello $index',
  ),
);
