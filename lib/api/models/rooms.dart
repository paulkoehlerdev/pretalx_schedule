// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'room.dart';

part 'rooms.g.dart';

@JsonSerializable()
class Rooms {
  const Rooms({
    required this.count,
    required this.results,
    this.next,
    this.previous,
  });
  
  factory Rooms.fromJson(Map<String, Object?> json) => _$RoomsFromJson(json);
  
  final int count;
  final String? next;
  final String? previous;
  final List<Room> results;

  Map<String, Object?> toJson() => _$RoomsToJson(this);
}
