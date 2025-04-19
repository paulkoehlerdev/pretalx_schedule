// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'options2.dart';
import 'question.dart';

part 'answer.g.dart';

@JsonSerializable()
class Answer {
  const Answer({
    required this.id,
    required this.question,
    required this.answer,
    required this.answerFile,
    required this.submission,
    required this.review,
    required this.person,
    required this.options,
  });
  
  factory Answer.fromJson(Map<String, Object?> json) => _$AnswerFromJson(json);
  
  final int id;
  final Question question;
  final String answer;
  @JsonKey(name: 'answer_file')
  final String answerFile;
  final String submission;
  final int review;
  final String person;
  final List<Options2> options;

  Map<String, Object?> toJson() => _$AnswerToJson(this);
}
