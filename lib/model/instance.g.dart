// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Instance _$InstanceFromJson(Map<String, dynamic> json) => Instance(
      name: json['name'] as String,
      url: json['url'] as String,
      events: (json['events'] as List<dynamic>)
          .map((e) => Event.fromJson(e as Map<String, dynamic>))
          .toSet(),
    );

Map<String, dynamic> _$InstanceToJson(Instance instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'events': instance.events.toList(),
    };
