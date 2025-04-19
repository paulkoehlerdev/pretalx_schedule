// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'internationalizable.dart';
import 'urls.dart';

part 'event.g.dart';

@JsonSerializable()
class Event {
  const Event({
    required this.name,
    required this.slug,
    required this.isPublic,
    required this.dateFrom,
    required this.dateTo,
    required this.timezone,
    required this.urls,
  });
  
  factory Event.fromJson(Map<String, Object?> json) => _$EventFromJson(json);
  
  final Internationalizable name;
  final String slug;
  @JsonKey(name: 'is_public')
  final bool isPublic;
  @JsonKey(name: 'date_from')
  final DateTime dateFrom;
  @JsonKey(name: 'date_to')
  final DateTime dateTo;
  final String timezone;
  final Urls urls;

  Map<String, Object?> toJson() => _$EventToJson(this);
}
