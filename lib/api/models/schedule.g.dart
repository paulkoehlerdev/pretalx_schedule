// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiSchedule _$ApiScheduleFromJson(Map<String, dynamic> json) => ApiSchedule(
      version: json['version'] as String,
      baseUrl: json['base_url'] as String,
      conference:
          ApiConference.fromJson(json['conference'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiScheduleToJson(ApiSchedule instance) =>
    <String, dynamic>{
      'version': instance.version,
      'base_url': instance.baseUrl,
      'conference': instance.conference.toJson(),
    };

ApiConference _$ApiConferenceFromJson(Map<String, dynamic> json) =>
    ApiConference(
      title: json['title'] as String,
      acronym: json['acronym'] as String,
      start: json['start'] as String,
      end: json['end'] as String,
      timeZoneName: json['time_zone_name'] as String,
      colors:
          ApiConferenceColor.fromJson(json['colors'] as Map<String, dynamic>),
      days: (json['days'] as List<dynamic>)
          .map((e) => ApiDay.fromJson(e as Map<String, dynamic>))
          .toList(),
      rooms: (json['rooms'] as List<dynamic>)
          .map((e) => ApiRoom.fromJson(e as Map<String, dynamic>))
          .toList(),
      tracks: (json['tracks'] as List<dynamic>)
          .map((e) => ApiTrack.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ApiConferenceToJson(ApiConference instance) =>
    <String, dynamic>{
      'title': instance.title,
      'acronym': instance.acronym,
      'start': instance.start,
      'end': instance.end,
      'time_zone_name': instance.timeZoneName,
      'colors': instance.colors.toJson(),
      'days': instance.days.map((e) => e.toJson()).toList(),
      'rooms': instance.rooms.map((e) => e.toJson()).toList(),
      'tracks': instance.tracks.map((e) => e.toJson()).toList(),
    };

ApiConferenceColor _$ApiConferenceColorFromJson(Map<String, dynamic> json) =>
    ApiConferenceColor(
      primary: json['primary'] as String,
    );

Map<String, dynamic> _$ApiConferenceColorToJson(ApiConferenceColor instance) =>
    <String, dynamic>{
      'primary': instance.primary,
    };

ApiTrack _$ApiTrackFromJson(Map<String, dynamic> json) => ApiTrack(
      name: json['name'] as String,
      color: json['color'] as String,
    );

Map<String, dynamic> _$ApiTrackToJson(ApiTrack instance) => <String, dynamic>{
      'name': instance.name,
      'color': instance.color,
    };

ApiRoom _$ApiRoomFromJson(Map<String, dynamic> json) => ApiRoom(
      name: json['name'] as String,
      guid: json['guid'] as String,
      description: json['description'] as String,
      capacity: (json['capacity'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ApiRoomToJson(ApiRoom instance) => <String, dynamic>{
      'name': instance.name,
      'guid': instance.guid,
      'description': instance.description,
      'capacity': instance.capacity,
    };

ApiDay _$ApiDayFromJson(Map<String, dynamic> json) => ApiDay(
      date: json['date'] as String,
      index: (json['index'] as num).toInt(),
      rooms: (json['rooms'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k,
            (e as List<dynamic>)
                .map((e) => ApiEvent.fromJson(e as Map<String, dynamic>))
                .toList()),
      ),
      dayStart: json['day_start'] as String,
      dayEnd: json['day_end'] as String,
    );

Map<String, dynamic> _$ApiDayToJson(ApiDay instance) => <String, dynamic>{
      'date': instance.date,
      'day_start': instance.dayStart,
      'day_end': instance.dayEnd,
      'index': instance.index,
      'rooms': instance.rooms
          .map((k, e) => MapEntry(k, e.map((e) => e.toJson()).toList())),
    };

ApiEvent _$ApiEventFromJson(Map<String, dynamic> json) => ApiEvent(
      guid: json['guid'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      slug: json['slug'] as String,
      date: json['date'] as String,
      start: json['start'] as String,
      duration: json['duration'] as String,
      room: json['room'] as String,
      type: json['type'] as String,
      track: json['track'] as String,
      language: json['language'] as String,
      abstract: json['abstract'] as String,
      description: json['description'] as String,
      persons: (json['persons'] as List<dynamic>)
          .map((e) => ApiPerson.fromJson(e as Map<String, dynamic>))
          .toList(),
      links: (json['links'] as List<dynamic>)
          .map((e) => ApiLink.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ApiEventToJson(ApiEvent instance) => <String, dynamic>{
      'guid': instance.guid,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'slug': instance.slug,
      'date': instance.date,
      'start': instance.start,
      'duration': instance.duration,
      'room': instance.room,
      'type': instance.type,
      'track': instance.track,
      'language': instance.language,
      'abstract': instance.abstract,
      'description': instance.description,
      'persons': instance.persons.map((e) => e.toJson()).toList(),
      'links': instance.links.map((e) => e.toJson()).toList(),
    };

ApiPerson _$ApiPersonFromJson(Map<String, dynamic> json) => ApiPerson(
      guid: json['guid'] as String,
      id: (json['id'] as num).toInt(),
      code: json['code'] as String,
      publicName: json['public_name'] as String,
      avatar: json['avatar'] as String?,
      biography: json['biography'] as String?,
    );

Map<String, dynamic> _$ApiPersonToJson(ApiPerson instance) => <String, dynamic>{
      'guid': instance.guid,
      'id': instance.id,
      'code': instance.code,
      'public_name': instance.publicName,
      'avatar': instance.avatar,
      'biography': instance.biography,
    };

ApiLink _$ApiLinkFromJson(Map<String, dynamic> json) => ApiLink(
      url: json['url'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$ApiLinkToJson(ApiLink instance) => <String, dynamic>{
      'url': instance.url,
      'title': instance.title,
    };
