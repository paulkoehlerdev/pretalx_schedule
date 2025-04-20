import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'schedule.g.dart';

@JsonSerializable(explicitToJson: true)
class ApiSchedule extends Equatable {
  final String version;
  @JsonKey(name: 'base_url')
  final String baseUrl;
  final ApiConference conference;

  const ApiSchedule({
    required this.version,
    required this.baseUrl,
    required this.conference,
  });

  factory ApiSchedule.fromJson(Map<String, dynamic> json) =>
      _$ApiScheduleFromJson(json);

  Map<String, dynamic> toJson() => _$ApiScheduleToJson(this);

  @override
  List<Object?> get props => [version, baseUrl, conference];
}

@JsonSerializable(explicitToJson: true)
class ApiConference extends Equatable {
  final String title;
  final String acronym;
  final String start;
  final String end;
  @JsonKey(name: 'time_zone_name')
  final String timeZoneName;
  final ApiConferenceColor colors;
  final List<ApiDay> days;
  final List<ApiRoom> rooms;
  final List<ApiTrack> tracks;

  const ApiConference({
    required this.title,
    required this.acronym,
    required this.start,
    required this.end,
    required this.timeZoneName,
    required this.colors,
    required this.days,
    required this.rooms,
    required this.tracks,
  });

  factory ApiConference.fromJson(Map<String, dynamic> json) =>
      _$ApiConferenceFromJson(json);

  Map<String, dynamic> toJson() => _$ApiConferenceToJson(this);

  @override
  List<Object?> get props =>
      [title, acronym, start, end, timeZoneName, colors, days, rooms, tracks];
}

@JsonSerializable(explicitToJson: true)
class ApiConferenceColor extends Equatable {
  final String primary;

  const ApiConferenceColor({
    required this.primary,
  });

  factory ApiConferenceColor.fromJson(Map<String, dynamic> json) =>
      _$ApiConferenceColorFromJson(json);

  Map<String, dynamic> toJson() => _$ApiConferenceColorToJson(this);

  @override
  List<Object?> get props => [primary];
}

@JsonSerializable(explicitToJson: true)
class ApiTrack extends Equatable {
  final String name;
  final String color;

  const ApiTrack({
    required this.name,
    required this.color,
  });

  factory ApiTrack.fromJson(Map<String, dynamic> json) =>
      _$ApiTrackFromJson(json);

  Map<String, dynamic> toJson() => _$ApiTrackToJson(this);

  @override
  List<Object?> get props => [name, color];
}

@JsonSerializable(explicitToJson: true)
class ApiRoom extends Equatable {
  final String name;
  final String guid;
  final String description;
  final int? capacity;

  const ApiRoom({
    required this.name,
    required this.guid,
    required this.description,
    required this.capacity,
  });

  factory ApiRoom.fromJson(Map<String, dynamic> json) =>
      _$ApiRoomFromJson(json);

  Map<String, dynamic> toJson() => _$ApiRoomToJson(this);

  @override
  List<Object?> get props => [name, guid, description, capacity];
}

@JsonSerializable(explicitToJson: true)
class ApiDay extends Equatable {
  final String date;
  final int index;
  final Map<String, List<ApiEvent>> rooms;

  const ApiDay({
    required this.date,
    required this.index,
    required this.rooms,
  });

  factory ApiDay.fromJson(Map<String, dynamic> json) => _$ApiDayFromJson(json);

  Map<String, dynamic> toJson() => _$ApiDayToJson(this);

  @override
  List<Object?> get props => [date, index, rooms];
}

@JsonSerializable(explicitToJson: true)
class ApiEvent extends Equatable {
  final String guid;
  final String title;
  final String subtitle;
  final String slug;
  final String date;
  final String start;
  final String duration;
  final String room;
  final String type;
  final String track;
  final String language;
  final String abstract;
  final String description;
  final List<ApiPerson> persons;
  final List<ApiLink> links;

  const ApiEvent({
    required this.guid,
    required this.title,
    required this.subtitle,
    required this.slug,
    required this.date,
    required this.start,
    required this.duration,
    required this.room,
    required this.type,
    required this.track,
    required this.language,
    required this.abstract,
    required this.description,
    required this.persons,
    required this.links,
  });

  factory ApiEvent.fromJson(Map<String, dynamic> json) =>
      _$ApiEventFromJson(json);

  Map<String, dynamic> toJson() => _$ApiEventToJson(this);

  @override
  List<Object?> get props => [
        guid,
        title,
        subtitle,
        slug,
        date,
        start,
        duration,
        room,
        type,
        track,
        language,
        abstract,
        description,
        persons,
        links,
      ];
}

@JsonSerializable()
class ApiPerson extends Equatable {
  final String guid;
  final int id;
  final String code;
  @JsonKey(name: 'public_name')
  final String publicName;
  final String? avatar;
  final String? biography;

  const ApiPerson({
    required this.guid,
    required this.id,
    required this.code,
    required this.publicName,
    required this.avatar,
    required this.biography,
  });

  factory ApiPerson.fromJson(Map<String, dynamic> json) =>
      _$ApiPersonFromJson(json);

  Map<String, dynamic> toJson() => _$ApiPersonToJson(this);

  @override
  List<Object?> get props => [id, publicName, avatar, biography];
}

@JsonSerializable()
class ApiLink extends Equatable {
  final String url;
  final String title;

  const ApiLink({
    required this.url,
    required this.title,
  });

  factory ApiLink.fromJson(Map<String, dynamic> json) =>
      _$ApiLinkFromJson(json);

  Map<String, dynamic> toJson() => _$ApiLinkToJson(this);

  @override
  List<Object?> get props => [url, title];
}
