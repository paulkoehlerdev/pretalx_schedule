// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Submission _$SubmissionFromJson(Map<String, dynamic> json) => Submission(
      code: json['code'] as String,
      title: json['title'] as String,
      submissionType: Internationalizable.fromJson(
          json['submission_type'] as Map<String, dynamic>),
      submissionTypeId: (json['submission_type_id'] as num).toInt(),
      track:
          Internationalizable.fromJson(json['track'] as Map<String, dynamic>),
      trackId: (json['track_id'] as num).toInt(),
      state: SubmissionState.fromJson(json['state'] as String),
      abstractValue: json['abstract'] as String,
      description: json['description'] as String,
      duration: (json['duration'] as num).toInt(),
      doNotRecord: json['do_not_record'] as bool,
      isFeatured: json['is_featured'] as bool,
      contentLocale: json['content_locale'] as String,
      slot: Slot.fromJson(json['slot'] as Map<String, dynamic>),
      answers: (json['answers'] as List<dynamic>)
          .map((e) => Answer.fromJson(e as Map<String, dynamic>))
          .toList(),
      speakers: (json['speakers'] as List<dynamic>?)
          ?.map((e) => Speaker.fromJson(e as Map<String, dynamic>))
          .toList(),
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      notes: json['notes'] as String?,
      internalNotes: json['internal_notes'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      tagIds: (json['tag_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$SubmissionToJson(Submission instance) =>
    <String, dynamic>{
      'code': instance.code,
      'speakers': instance.speakers,
      'created': instance.created?.toIso8601String(),
      'title': instance.title,
      'submission_type': instance.submissionType,
      'submission_type_id': instance.submissionTypeId,
      'track': instance.track,
      'track_id': instance.trackId,
      'state': _$SubmissionStateEnumMap[instance.state]!,
      'abstract': instance.abstractValue,
      'description': instance.description,
      'duration': instance.duration,
      'do_not_record': instance.doNotRecord,
      'is_featured': instance.isFeatured,
      'content_locale': instance.contentLocale,
      'slot': instance.slot,
      'answers': instance.answers,
      'notes': instance.notes,
      'internal_notes': instance.internalNotes,
      'tags': instance.tags,
      'tag_ids': instance.tagIds,
    };

const _$SubmissionStateEnumMap = {
  SubmissionState.submitted: 'submitted',
  SubmissionState.accepted: 'accepted',
  SubmissionState.rejected: 'rejected',
  SubmissionState.confirmed: 'confirmed',
  SubmissionState.$unknown: r'$unknown',
};
