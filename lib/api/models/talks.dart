// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'talk.dart';

part 'talks.g.dart';

@JsonSerializable()
class Talks {
  const Talks({
    required this.count,
    required this.results,
    this.next,
    this.previous,
  });
  
  factory Talks.fromJson(Map<String, Object?> json) => _$TalksFromJson(json);
  
  final int count;
  final String? next;
  final String? previous;
  final List<Talk> results;

  Map<String, Object?> toJson() => _$TalksToJson(this);
}
