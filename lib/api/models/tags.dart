// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'tag.dart';

part 'tags.g.dart';

@JsonSerializable()
class Tags {
  const Tags({
    required this.count,
    required this.results,
    this.next,
    this.previous,
  });
  
  factory Tags.fromJson(Map<String, Object?> json) => _$TagsFromJson(json);
  
  final int count;
  final String? next;
  final String? previous;
  final List<Tag> results;

  Map<String, Object?> toJson() => _$TagsToJson(this);
}
