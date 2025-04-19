// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'options.g.dart';

@JsonSerializable()
class Options {
  const Options({
    required this.id,
    required this.option,
  });
  
  factory Options.fromJson(Map<String, Object?> json) => _$OptionsFromJson(json);
  
  final int id;
  final Map<String, String> option;

  Map<String, Object?> toJson() => _$OptionsToJson(this);
}
