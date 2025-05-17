// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConferenceImpl _$$ConferenceImplFromJson(Map<String, dynamic> json) =>
    _$ConferenceImpl(
      acronym: json['acronym'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      start: json['start'] as String,
      end: json['end'] as String,
      daysCount: (json['daysCount'] as num).toInt(),
      timeslotDuration: json['timeslot_duration'] as String,
      timeZoneName: json['time_zone_name'] as String?,
      logo: json['logo'] as String?,
      colors: json['colors'] == null
          ? null
          : Colors.fromJson(json['colors'] as Map<String, dynamic>),
      keywords: (json['keywords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      url: json['url'] as String?,
      tracks: (json['tracks'] as List<dynamic>?)
          ?.map((e) => Track.fromJson(e as Map<String, dynamic>))
          .toList(),
      rooms: (json['rooms'] as List<dynamic>?)
          ?.map((e) => Room.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] as Map<String, dynamic>?,
      days: (json['days'] as List<dynamic>)
          .map((e) => Day.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ConferenceImplToJson(_$ConferenceImpl instance) =>
    <String, dynamic>{
      'acronym': instance.acronym,
      'title': instance.title,
      'description': instance.description,
      'start': instance.start,
      'end': instance.end,
      'daysCount': instance.daysCount,
      'timeslot_duration': instance.timeslotDuration,
      'time_zone_name': instance.timeZoneName,
      'logo': instance.logo,
      'colors': instance.colors,
      'keywords': instance.keywords,
      'url': instance.url,
      'tracks': instance.tracks,
      'rooms': instance.rooms,
      'meta': instance.meta,
      'days': instance.days,
    };

_$ColorsImpl _$$ColorsImplFromJson(Map<String, dynamic> json) => _$ColorsImpl(
      primary: json['primary'] as String?,
      background: json['background'] as String?,
    );

Map<String, dynamic> _$$ColorsImplToJson(_$ColorsImpl instance) =>
    <String, dynamic>{
      'primary': instance.primary,
      'background': instance.background,
    };

_$TrackImpl _$$TrackImplFromJson(Map<String, dynamic> json) => _$TrackImpl(
      name: json['name'] as String,
      slug: json['slug'] as String?,
      color: json['color'] as String?,
    );

Map<String, dynamic> _$$TrackImplToJson(_$TrackImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'color': instance.color,
    };
