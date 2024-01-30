// To parse this JSON data, do
//
//     final projectModel = projectModelFromJson(jsonString);

import 'dart:convert';

ProjectModel projectModelFromJson(String str) =>
    ProjectModel.fromJson(json.decode(str));

String projectModelToJson(ProjectModel data) => json.encode(data.toJson());

class ProjectModel {
  String? title;
  String? description;

  ProjectModel({
    this.title,
    this.description,
  });

  ProjectModel copyWith({
    String? title,
    String? description,
  }) =>
      ProjectModel(
        title: title ?? this.title,
        description: description ?? this.description,
      );

  factory ProjectModel.fromJson(Map<String, dynamic> json) => ProjectModel(
        title: json["title"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
      };
}
