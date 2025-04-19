// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'submission.dart';

part 'submissions.g.dart';

@JsonSerializable()
class Submissions {
  const Submissions({
    required this.count,
    required this.results,
    this.next,
    this.previous,
  });
  
  factory Submissions.fromJson(Map<String, Object?> json) => _$SubmissionsFromJson(json);
  
  final int count;
  final String? next;
  final String? previous;
  final List<Submission> results;

  Map<String, Object?> toJson() => _$SubmissionsToJson(this);
}
