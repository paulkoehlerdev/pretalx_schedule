// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'event.dart';

part 'events.g.dart';

@JsonSerializable()
class Events {
  const Events({
    required this.count,
    required this.results,
    this.next,
    this.previous,
  });
  
  factory Events.fromJson(Map<String, Object?> json) => _$EventsFromJson(json);
  
  final int count;
  final String? next;
  final String? previous;
  final List<Event> results;

  Map<String, Object?> toJson() => _$EventsToJson(this);
}
