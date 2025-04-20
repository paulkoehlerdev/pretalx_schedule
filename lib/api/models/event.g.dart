// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiEvent _$ApiEventFromJson(Map<String, dynamic> json) => ApiEvent(
      name: Map<String, String>.from(json['name'] as Map),
      slug: json['slug'] as String,
      isPublic: json['is_public'] as bool,
      dateFrom: json['date_from'] as String,
      dateTo: json['date_to'] as String,
      timezone: json['timezone'] as String,
      urls: Map<String, String>.from(json['urls'] as Map),
    );

Map<String, dynamic> _$ApiEventToJson(ApiEvent instance) => <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'is_public': instance.isPublic,
      'date_from': instance.dateFrom,
      'date_to': instance.dateTo,
      'timezone': instance.timezone,
      'urls': instance.urls,
    };
