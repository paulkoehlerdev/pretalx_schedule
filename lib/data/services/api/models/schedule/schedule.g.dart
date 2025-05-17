// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduleImpl _$$ScheduleImplFromJson(Map<String, dynamic> json) =>
    _$ScheduleImpl(
      schedule: ScheduleData.fromJson(json['schedule'] as Map<String, dynamic>),
      schema: json['schema'] as String?,
      generator: json['generator'] == null
          ? null
          : Generator.fromJson(json['generator'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ScheduleImplToJson(_$ScheduleImpl instance) =>
    <String, dynamic>{
      'schedule': instance.schedule,
      'schema': instance.schema,
      'generator': instance.generator,
    };

_$ScheduleDataImpl _$$ScheduleDataImplFromJson(Map<String, dynamic> json) =>
    _$ScheduleDataImpl(
      version: json['version'] as String,
      baseUrl: json['base_url'] as String?,
      conference:
          Conference.fromJson(json['conference'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ScheduleDataImplToJson(_$ScheduleDataImpl instance) =>
    <String, dynamic>{
      'version': instance.version,
      'base_url': instance.baseUrl,
      'conference': instance.conference,
    };

_$GeneratorImpl _$$GeneratorImplFromJson(Map<String, dynamic> json) =>
    _$GeneratorImpl(
      name: json['name'] as String?,
      version: json['version'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$GeneratorImplToJson(_$GeneratorImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'version': instance.version,
      'url': instance.url,
    };
