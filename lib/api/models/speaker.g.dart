// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'speaker.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Speaker _$SpeakerFromJson(Map<String, dynamic> json) => Speaker(
      code: json['code'] as String,
      name: json['name'] as String,
      biography: json['biography'] as String?,
      submissions: (json['submissions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      avatar: json['avatar'] as String?,
      email: json['email'] as String?,
      availabilities: (json['availabilities'] as List<dynamic>?)
          ?.map((e) => Availability.fromJson(e as Map<String, dynamic>))
          .toList(),
      answers: (json['answers'] as List<dynamic>?)
          ?.map((e) => Answer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpeakerToJson(Speaker instance) => <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'biography': instance.biography,
      'submissions': instance.submissions,
      'avatar': instance.avatar,
      'email': instance.email,
      'availabilities': instance.availabilities,
      'answers': instance.answers,
    };
