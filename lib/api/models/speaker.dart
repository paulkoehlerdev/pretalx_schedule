// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'answer.dart';
import 'availability.dart';

part 'speaker.g.dart';

@JsonSerializable()
class Speaker {
  const Speaker({
    required this.code,
    required this.name,
    this.biography,
    this.submissions,
    this.avatar,
    this.email,
    this.availabilities,
    this.answers,
  });
  
  factory Speaker.fromJson(Map<String, Object?> json) => _$SpeakerFromJson(json);
  
  final String code;
  final String name;
  final String? biography;
  final List<String>? submissions;
  final String? avatar;
  final String? email;
  final List<Availability>? availabilities;
  final List<Answer>? answers;

  Map<String, Object?> toJson() => _$SpeakerToJson(this);
}
