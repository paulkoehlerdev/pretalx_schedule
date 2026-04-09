// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersonImpl _$$PersonImplFromJson(Map<String, dynamic> json) => _$PersonImpl(
      name: json['name'] as String?,
      guid: json['guid'] as String?,
      id: (json['id'] as num?)?.toInt(),
      url: json['url'] as String?,
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      code: json['code'] as String?,
      avatar: json['avatar'] as String?,
      biography: json['biography'] as String?,
    );

Map<String, dynamic> _$$PersonImplToJson(_$PersonImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'guid': instance.guid,
      'id': instance.id,
      'url': instance.url,
      'links': instance.links,
      'code': instance.code,
      'avatar': instance.avatar,
      'biography': instance.biography,
    };
