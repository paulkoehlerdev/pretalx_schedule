// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'internationalizable.dart';

part 'slot.g.dart';

@JsonSerializable()
class Slot {
  const Slot({
    required this.start,
    required this.end,
    required this.room,
    required this.roomId,
  });
  
  factory Slot.fromJson(Map<String, Object?> json) => _$SlotFromJson(json);
  
  final DateTime start;
  final DateTime end;
  final Internationalizable room;
  @JsonKey(name: 'room_id')
  final int roomId;

  Map<String, Object?> toJson() => _$SlotToJson(this);
}
