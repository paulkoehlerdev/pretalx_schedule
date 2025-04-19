// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'availability.g.dart';

@JsonSerializable()
class Availability {
  const Availability({
    required this.id,
    required this.start,
    required this.end,
    required this.allDay,
  });
  
  factory Availability.fromJson(Map<String, Object?> json) => _$AvailabilityFromJson(json);
  
  final int id;
  final DateTime start;
  final DateTime end;
  final bool allDay;

  Map<String, Object?> toJson() => _$AvailabilityToJson(this);
}
