// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Event _$EventFromJson(Map<String, dynamic> json) => Event(
      name: Internationalizable.fromJson(json['name'] as Map<String, dynamic>),
      slug: json['slug'] as String,
      isPublic: json['is_public'] as bool,
      dateFrom: DateTime.parse(json['date_from'] as String),
      dateTo: DateTime.parse(json['date_to'] as String),
      timezone: json['timezone'] as String,
      urls: Urls.fromJson(json['urls'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'is_public': instance.isPublic,
      'date_from': instance.dateFrom.toIso8601String(),
      'date_to': instance.dateTo.toIso8601String(),
      'timezone': instance.timezone,
      'urls': instance.urls,
    };
