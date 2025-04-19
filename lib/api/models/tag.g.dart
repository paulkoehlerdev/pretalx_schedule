// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tag _$TagFromJson(Map<String, dynamic> json) => Tag(
      tag: json['tag'] as String,
      description: Map<String, String>.from(json['description'] as Map),
      color: json['color'] as String,
    );

Map<String, dynamic> _$TagToJson(Tag instance) => <String, dynamic>{
      'tag': instance.tag,
      'description': instance.description,
      'color': instance.color,
    };
