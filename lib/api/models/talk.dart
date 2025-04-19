// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'answer.dart';
import 'internationalizable.dart';
import 'slot.dart';
import 'speaker.dart';
import 'submission_state.dart';

part 'talk.g.dart';

@JsonSerializable()
class Talk {
  const Talk({
    required this.code,
    required this.title,
    required this.submissionType,
    required this.submissionTypeId,
    required this.track,
    required this.trackId,
    required this.state,
    required this.abstractValue,
    required this.description,
    required this.duration,
    required this.doNotRecord,
    required this.isFeatured,
    required this.contentLocale,
    required this.slot,
    required this.answers,
    this.speakers,
    this.created,
    this.notes,
    this.internalNotes,
    this.tags,
    this.tagIds,
  });
  
  factory Talk.fromJson(Map<String, Object?> json) => _$TalkFromJson(json);
  
  final String code;
  final List<Speaker>? speakers;
  final DateTime? created;
  final String title;
  @JsonKey(name: 'submission_type')
  final Internationalizable submissionType;
  @JsonKey(name: 'submission_type_id')
  final int submissionTypeId;
  final Internationalizable track;
  @JsonKey(name: 'track_id')
  final int trackId;
  final SubmissionState state;

  /// The name has been replaced because it contains a keyword. Original name: `abstract`.
  @JsonKey(name: 'abstract')
  final String abstractValue;
  final String description;
  final int duration;
  @JsonKey(name: 'do_not_record')
  final bool doNotRecord;
  @JsonKey(name: 'is_featured')
  final bool isFeatured;
  @JsonKey(name: 'content_locale')
  final String contentLocale;
  final Slot slot;
  final List<Answer> answers;
  final String? notes;
  @JsonKey(name: 'internal_notes')
  final String? internalNotes;
  final List<String>? tags;
  @JsonKey(name: 'tag_ids')
  final List<int>? tagIds;

  Map<String, Object?> toJson() => _$TalkToJson(this);
}
