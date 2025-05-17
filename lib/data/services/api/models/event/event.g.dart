// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventImpl _$$EventImplFromJson(Map<String, dynamic> json) => _$EventImpl(
      name: LocalizedName.fromJson(json['name'] as Map<String, dynamic>),
      slug: json['slug'] as String,
      isPublic: json['is_public'] as bool,
      dateFrom: json['date_from'] as String,
      dateTo: json['date_to'] as String,
      timezone: json['timezone'] as String,
      urls: EventUrls.fromJson(json['urls'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EventImplToJson(_$EventImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'is_public': instance.isPublic,
      'date_from': instance.dateFrom,
      'date_to': instance.dateTo,
      'timezone': instance.timezone,
      'urls': instance.urls,
    };

_$LocalizedNameImpl _$$LocalizedNameImplFromJson(Map<String, dynamic> json) =>
    _$LocalizedNameImpl(
      de: json['de'] as String,
      en: json['en'] as String,
    );

Map<String, dynamic> _$$LocalizedNameImplToJson(_$LocalizedNameImpl instance) =>
    <String, dynamic>{
      'de': instance.de,
      'en': instance.en,
    };

_$EventUrlsImpl _$$EventUrlsImplFromJson(Map<String, dynamic> json) =>
    _$EventUrlsImpl(
      base: json['base'] as String,
      schedule: json['schedule'] as String,
      login: json['login'] as String,
      feed: json['feed'] as String,
    );

Map<String, dynamic> _$$EventUrlsImplToJson(_$EventUrlsImpl instance) =>
    <String, dynamic>{
      'base': instance.base,
      'schedule': instance.schedule,
      'login': instance.login,
      'feed': instance.feed,
    };
