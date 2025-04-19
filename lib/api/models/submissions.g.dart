// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submissions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Submissions _$SubmissionsFromJson(Map<String, dynamic> json) => Submissions(
      count: (json['count'] as num).toInt(),
      results: (json['results'] as List<dynamic>)
          .map((e) => Submission.fromJson(e as Map<String, dynamic>))
          .toList(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
    );

Map<String, dynamic> _$SubmissionsToJson(Submissions instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
