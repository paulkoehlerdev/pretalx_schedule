import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'event.g.dart';

@JsonSerializable()
class ApiEvent extends Equatable {
  final Map<String, String> name;
  final String slug;
  @JsonKey(name: 'is_public')
  final bool isPublic;
  @JsonKey(name: 'date_from')
  final String dateFrom;
  @JsonKey(name: 'date_to')
  final String dateTo;
  final String timezone;
  final Map<String, String> urls;

  const ApiEvent({
    required this.name,
    required this.slug,
    required this.isPublic,
    required this.dateFrom,
    required this.dateTo,
    required this.timezone,
    required this.urls,
  });

  factory ApiEvent.fromJson(Map<String, dynamic> json) =>
      _$ApiEventFromJson(json);

  Map<String, dynamic> toJson() => _$ApiEventToJson(this);

  @override
  List<Object?> get props =>
      [slug, name, isPublic, dateFrom, dateTo, timezone, urls];
}
