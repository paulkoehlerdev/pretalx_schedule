// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoomImpl _$$RoomImplFromJson(Map<String, dynamic> json) => _$RoomImpl(
      name: json['name'] as String,
      slug: json['slug'] as String?,
      type: json['type'] as String?,
      guid: json['guid'] as String,
      streamId: json['stream_id'] as String?,
      description: json['description'] as String?,
      capacity: (json['capacity'] as num?)?.toInt(),
      url: json['url'] as String?,
      features: json['features'] == null
          ? null
          : RoomFeatures.fromJson(json['features'] as Map<String, dynamic>),
      assembly: json['assembly'] == null
          ? null
          : HubAssembly.fromJson(json['assembly'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RoomImplToJson(_$RoomImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'type': instance.type,
      'guid': instance.guid,
      'stream_id': instance.streamId,
      'description': instance.description,
      'capacity': instance.capacity,
      'url': instance.url,
      'features': instance.features,
      'assembly': instance.assembly,
    };

_$RoomFeaturesImpl _$$RoomFeaturesImplFromJson(Map<String, dynamic> json) =>
    _$RoomFeaturesImpl(
      recording: json['recording'] as String?,
    );

Map<String, dynamic> _$$RoomFeaturesImplToJson(_$RoomFeaturesImpl instance) =>
    <String, dynamic>{
      'recording': instance.recording,
    };

_$HubAssemblyImpl _$$HubAssemblyImplFromJson(Map<String, dynamic> json) =>
    _$HubAssemblyImpl(
      name: json['name'] as String,
      slug: json['slug'] as String,
      guid: json['guid'] as String,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$HubAssemblyImplToJson(_$HubAssemblyImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'guid': instance.guid,
      'url': instance.url,
    };
