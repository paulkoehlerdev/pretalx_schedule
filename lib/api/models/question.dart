// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'question.g.dart';

@JsonSerializable()
class Question {
  const Question({
    required this.id,
    required this.question,
  });
  
  factory Question.fromJson(Map<String, Object?> json) => _$QuestionFromJson(json);
  
  final int id;
  final Map<String, String> question;

  Map<String, Object?> toJson() => _$QuestionToJson(this);
}
