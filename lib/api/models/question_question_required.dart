// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum QuestionQuestionRequired {
  @JsonValue('optional')
  optional('optional'),
  /// The name has been replaced because it contains a keyword. Original name: `required`.
  @JsonValue('required')
  valueRequired('required'),
  @JsonValue('after_deadline')
  afterDeadline('after_deadline'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const QuestionQuestionRequired(this.json);

  factory QuestionQuestionRequired.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;
}
