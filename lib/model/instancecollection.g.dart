// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instancecollection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InstanceCollection _$InstanceCollectionFromJson(Map<String, dynamic> json) =>
    InstanceCollection(
      selected: (json['selected'] as num?)?.toInt() ?? 0,
      instances: (json['instances'] as List<dynamic>?)
              ?.map((e) => Instance.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$InstanceCollectionToJson(InstanceCollection instance) =>
    <String, dynamic>{
      'selected': instance.selected,
      'instances': instance.instances,
    };
