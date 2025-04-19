// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'tag.g.dart';

@JsonSerializable()
class Tag {
  const Tag({
    required this.tag,
    required this.description,
    required this.color,
  });
  
  factory Tag.fromJson(Map<String, Object?> json) => _$TagFromJson(json);
  
  final String tag;
  final Map<String, String> description;
  final String color;

  Map<String, Object?> toJson() => _$TagToJson(this);
}
