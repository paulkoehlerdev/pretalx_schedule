// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instancecollection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InstanceCollection _$InstanceCollectionFromJson(Map<String, dynamic> json) =>
    InstanceCollection(
      selectedEventSlug: json['selectedEventSlug'] as String?,
      instances: (json['instances'] as List<dynamic>)
          .map((e) => Instance.fromJson(e as Map<String, dynamic>))
          .toSet(),
    );

Map<String, dynamic> _$InstanceCollectionToJson(InstanceCollection instance) =>
    <String, dynamic>{
      'selectedEventSlug': instance.selectedEventSlug,
      'instances': instance.instances.toList(),
    };
