// conference.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pretalx_schedule/data/services/api/models/room/room.dart';
import 'package:pretalx_schedule/data/services/api/models/talk/talk.dart';

part 'conference.freezed.dart';
part 'conference.g.dart';

@freezed
class Conference with _$Conference {
  const factory Conference({
    required String acronym,
    required String title,
    String? description,
    required String start,
    required String end,
    @JsonKey(name: 'daysCount') required int daysCount,
    @JsonKey(name: 'timeslot_duration') required String timeslotDuration,
    @JsonKey(name: 'time_zone_name') String? timeZoneName,
    String? logo,
    Colors? colors,
    List<String>? keywords,
    String? url,
    List<Track>? tracks,
    List<Room>? rooms,
    Map<String, dynamic>? meta,
    required List<Day> days,
  }) = _Conference;

  factory Conference.fromJson(Map<String, dynamic> json) =>
      _$ConferenceFromJson(json);
}

@freezed
class Colors with _$Colors {
  const factory Colors({
    String? primary,
    String? background,
  }) = _Colors;

  factory Colors.fromJson(Map<String, dynamic> json) => _$ColorsFromJson(json);
}

@freezed
class Track with _$Track {
  const factory Track({
    required String name,
    String? slug,
    String? color,
  }) = _Track;

  factory Track.fromJson(Map<String, dynamic> json) => _$TrackFromJson(json);
}
