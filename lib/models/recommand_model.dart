// To parse this JSON data, do
//
//     final recommandModel = recommandModelFromJson(jsonString);

import 'dart:convert';

RecommandModel recommandModelFromJson(String str) =>
    RecommandModel.fromJson(json.decode(str));

String recommandModelToJson(RecommandModel data) => json.encode(data.toJson());

class RecommandModel {
  String? name;
  String? source;
  String? message;

  RecommandModel({
    this.name,
    this.source,
    this.message,
  });

  RecommandModel copyWith({
    String? name,
    String? source,
    String? message,
  }) =>
      RecommandModel(
        name: name ?? this.name,
        source: source ?? this.source,
        message: message ?? this.message,
      );

  factory RecommandModel.fromJson(Map<String, dynamic> json) => RecommandModel(
        name: json["name"],
        source: json["source"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "source": source,
        "message": message,
      };
}
