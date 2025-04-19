// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Review _$ReviewFromJson(Map<String, dynamic> json) => Review(
      id: (json['id'] as num).toInt(),
      submission: json['submission'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      text: json['text'] as String,
      score: (json['score'] as num).toInt(),
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      answers: (json['answers'] as List<dynamic>)
          .map((e) => Answer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ReviewToJson(Review instance) => <String, dynamic>{
      'id': instance.id,
      'submission': instance.submission,
      'user': instance.user,
      'text': instance.text,
      'score': instance.score,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'answers': instance.answers,
    };
