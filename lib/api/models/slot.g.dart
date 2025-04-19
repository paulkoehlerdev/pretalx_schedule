// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Slot _$SlotFromJson(Map<String, dynamic> json) => Slot(
      start: DateTime.parse(json['start'] as String),
      end: DateTime.parse(json['end'] as String),
      room: Internationalizable.fromJson(json['room'] as Map<String, dynamic>),
      roomId: (json['room_id'] as num).toInt(),
    );

Map<String, dynamic> _$SlotToJson(Slot instance) => <String, dynamic>{
      'start': instance.start.toIso8601String(),
      'end': instance.end.toIso8601String(),
      'room': instance.room,
      'room_id': instance.roomId,
    };
