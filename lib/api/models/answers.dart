// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'answer.dart';

part 'answers.g.dart';

@JsonSerializable()
class Answers {
  const Answers({
    required this.count,
    required this.results,
    this.next,
    this.previous,
  });
  
  factory Answers.fromJson(Map<String, Object?> json) => _$AnswersFromJson(json);
  
  final int count;
  final String? next;
  final String? previous;
  final List<Answer> results;

  Map<String, Object?> toJson() => _$AnswersToJson(this);
}
