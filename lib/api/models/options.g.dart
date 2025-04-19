// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Options _$OptionsFromJson(Map<String, dynamic> json) => Options(
      id: (json['id'] as num).toInt(),
      option: Map<String, String>.from(json['option'] as Map),
    );

Map<String, dynamic> _$OptionsToJson(Options instance) => <String, dynamic>{
      'id': instance.id,
      'option': instance.option,
    };
