// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'speakers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Speakers _$SpeakersFromJson(Map<String, dynamic> json) => Speakers(
      count: (json['count'] as num).toInt(),
      results: (json['results'] as List<dynamic>)
          .map((e) => Speaker.fromJson(e as Map<String, dynamic>))
          .toList(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
    );

Map<String, dynamic> _$SpeakersToJson(Speakers instance) => <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
