// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Room _$RoomFromJson(Map<String, dynamic> json) => Room(
      id: (json['id'] as num).toInt(),
      name: Map<String, String>.from(json['name'] as Map),
      description: Map<String, String>.from(json['description'] as Map),
      capacity: (json['capacity'] as num).toInt(),
      position: (json['position'] as num).toInt(),
      speakerInfo: Map<String, String>.from(json['speaker_info'] as Map),
      availabilities: (json['availabilities'] as List<dynamic>)
          .map((e) => Availability.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RoomToJson(Room instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'capacity': instance.capacity,
      'position': instance.position,
      'speaker_info': instance.speakerInfo,
      'availabilities': instance.availabilities,
    };
