// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'options2.g.dart';

@JsonSerializable()
class Options2 {
  const Options2({
    required this.id,
    required this.option,
  });
  
  factory Options2.fromJson(Map<String, Object?> json) => _$Options2FromJson(json);
  
  final int id;
  final String option;

  Map<String, Object?> toJson() => _$Options2ToJson(this);
}
