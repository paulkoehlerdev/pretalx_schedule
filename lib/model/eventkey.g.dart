// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eventkey.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventKey _$EventKeyFromJson(Map<String, dynamic> json) => EventKey(
      event: Event.fromJson(json['event'] as Map<String, dynamic>),
      instance: Instance.fromJson(json['instance'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EventKeyToJson(EventKey instance) => <String, dynamic>{
      'event': instance.event,
      'instance': instance.instance,
    };
