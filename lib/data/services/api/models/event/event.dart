import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';
part 'event.g.dart';

@freezed
class Event with _$Event {
  const factory Event({
    required LocalizedName name,
    required String slug,
    @JsonKey(name: 'is_public') required bool isPublic,
    @JsonKey(name: 'date_from') required String dateFrom,
    @JsonKey(name: 'date_to') required String dateTo,
    required String timezone,
    required EventUrls urls,
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}

@freezed
class LocalizedName with _$LocalizedName {
  const factory LocalizedName({
    required String de,
    required String en,
  }) = _LocalizedName;

  factory LocalizedName.fromJson(Map<String, dynamic> json) =>
      _$LocalizedNameFromJson(json);
}

@freezed
class EventUrls with _$EventUrls {
  const factory EventUrls({
    required String base,
    required String schedule,
    required String login,
    required String feed,
  }) = _EventUrls;

  factory EventUrls.fromJson(Map<String, dynamic> json) =>
      _$EventUrlsFromJson(json);
}
