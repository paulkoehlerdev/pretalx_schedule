// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'availability.dart';

part 'room.g.dart';

@JsonSerializable()
class Room {
  const Room({
    required this.id,
    required this.name,
    required this.description,
    required this.capacity,
    required this.position,
    required this.speakerInfo,
    required this.availabilities,
  });
  
  factory Room.fromJson(Map<String, Object?> json) => _$RoomFromJson(json);
  
  final int id;
  final Map<String, String> name;
  final Map<String, String> description;
  final int capacity;
  final int position;
  @JsonKey(name: 'speaker_info')
  final Map<String, String> speakerInfo;
  final List<Availability> availabilities;

  Map<String, Object?> toJson() => _$RoomToJson(this);
}
