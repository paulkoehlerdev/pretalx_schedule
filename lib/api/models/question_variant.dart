// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum QuestionVariant {
  @JsonValue('number')
  number('number'),
  @JsonValue('string')
  string('string'),
  @JsonValue('text')
  text('text'),
  @JsonValue('boolean')
  boolean('boolean'),
  @JsonValue('file')
  file('file'),
  @JsonValue('choices')
  choices('choices'),
  @JsonValue('multiple_choice')
  multipleChoice('multiple_choice'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const QuestionVariant(this.json);

  factory QuestionVariant.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;
}
