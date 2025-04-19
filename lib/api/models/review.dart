// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'answer.dart';
import 'user.dart';

part 'review.g.dart';

@JsonSerializable()
class Review {
  const Review({
    required this.id,
    required this.submission,
    required this.user,
    required this.text,
    required this.score,
    required this.created,
    required this.updated,
    required this.answers,
  });
  
  factory Review.fromJson(Map<String, Object?> json) => _$ReviewFromJson(json);
  
  final int id;
  final String submission;
  final User user;
  final String text;
  final int score;
  final DateTime created;
  final DateTime updated;
  final List<Answer> answers;

  Map<String, Object?> toJson() => _$ReviewToJson(this);
}
