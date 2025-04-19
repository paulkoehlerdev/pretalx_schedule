// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum QuestionTarget {
  @JsonValue('speaker')
  speaker('speaker'),
  @JsonValue('submission')
  submission('submission'),
  @JsonValue('reviewer')
  reviewer('reviewer'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const QuestionTarget(this.json);

  factory QuestionTarget.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;
}
