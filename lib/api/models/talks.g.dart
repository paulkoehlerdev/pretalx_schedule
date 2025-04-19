// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'talks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Talks _$TalksFromJson(Map<String, dynamic> json) => Talks(
      count: (json['count'] as num).toInt(),
      results: (json['results'] as List<dynamic>)
          .map((e) => Talk.fromJson(e as Map<String, dynamic>))
          .toList(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
    );

Map<String, dynamic> _$TalksToJson(Talks instance) => <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
