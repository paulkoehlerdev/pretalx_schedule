// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'question.dart';

part 'questions.g.dart';

@JsonSerializable()
class Questions {
  const Questions({
    required this.count,
    required this.results,
    this.next,
    this.previous,
  });
  
  factory Questions.fromJson(Map<String, Object?> json) => _$QuestionsFromJson(json);
  
  final int count;
  final String? next;
  final String? previous;
  final List<Question> results;

  Map<String, Object?> toJson() => _$QuestionsToJson(this);
}
