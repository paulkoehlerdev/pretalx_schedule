// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'speaker.dart';

part 'speakers.g.dart';

@JsonSerializable()
class Speakers {
  const Speakers({
    required this.count,
    required this.results,
    this.next,
    this.previous,
  });
  
  factory Speakers.fromJson(Map<String, Object?> json) => _$SpeakersFromJson(json);
  
  final int count;
  final String? next;
  final String? previous;
  final List<Speaker> results;

  Map<String, Object?> toJson() => _$SpeakersToJson(this);
}
