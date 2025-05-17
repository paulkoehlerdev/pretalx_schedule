// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'talk.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DayImpl _$$DayImplFromJson(Map<String, dynamic> json) => _$DayImpl(
      index: (json['index'] as num).toInt(),
      date: json['date'] as String,
      dayStart: json['day_start'] as String,
      dayEnd: json['day_end'] as String,
      rooms: (json['rooms'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k,
            (e as List<dynamic>)
                .map((e) => Talk.fromJson(e as Map<String, dynamic>))
                .toList()),
      ),
    );

Map<String, dynamic> _$$DayImplToJson(_$DayImpl instance) => <String, dynamic>{
      'index': instance.index,
      'date': instance.date,
      'day_start': instance.dayStart,
      'day_end': instance.dayEnd,
      'rooms': instance.rooms,
    };

_$TalkImpl _$$TalkImplFromJson(Map<String, dynamic> json) => _$TalkImpl(
      guid: json['guid'] as String,
      code: json['code'] as String?,
      id: (json['id'] as num).toInt(),
      logo: json['logo'] as String?,
      date: json['date'] as String,
      start: json['start'] as String,
      duration: json['duration'] as String,
      room: json['room'] as String,
      slug: json['slug'] as String,
      url: json['url'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String?,
      track: json['track'] as String?,
      type: json['type'] as String,
      language: json['language'] as String?,
      abstract: json['abstract'] as String?,
      description: json['description'] as String?,
      recordingLicense: json['recordingLicense'] as String?,
      doNotRecord: json['do_not_record'] as bool?,
      doNotStream: json['do_not_stream'],
      persons: (json['persons'] as List<dynamic>)
          .map((e) => Person.fromJson(e as Map<String, dynamic>))
          .toList(),
      links: (json['links'] as List<dynamic>)
          .map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      feedbackUrl: json['feedback_url'] as String?,
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TalkImplToJson(_$TalkImpl instance) =>
    <String, dynamic>{
      'guid': instance.guid,
      'code': instance.code,
      'id': instance.id,
      'logo': instance.logo,
      'date': instance.date,
      'start': instance.start,
      'duration': instance.duration,
      'room': instance.room,
      'slug': instance.slug,
      'url': instance.url,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'track': instance.track,
      'type': instance.type,
      'language': instance.language,
      'abstract': instance.abstract,
      'description': instance.description,
      'recordingLicense': instance.recordingLicense,
      'do_not_record': instance.doNotRecord,
      'do_not_stream': instance.doNotStream,
      'persons': instance.persons,
      'links': instance.links,
      'feedback_url': instance.feedbackUrl,
      'attachments': instance.attachments,
    };
