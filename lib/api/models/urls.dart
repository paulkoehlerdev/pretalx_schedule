// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'urls.g.dart';

@JsonSerializable()
class Urls {
  const Urls({
    required this.baseValue,
    required this.schedule,
    required this.login,
    required this.feed,
  });
  
  factory Urls.fromJson(Map<String, Object?> json) => _$UrlsFromJson(json);
  
  /// The name has been replaced because it contains a keyword. Original name: `base`.
  @JsonKey(name: 'base')
  final String baseValue;
  final String schedule;
  final String login;
  final String feed;

  Map<String, Object?> toJson() => _$UrlsToJson(this);
}
