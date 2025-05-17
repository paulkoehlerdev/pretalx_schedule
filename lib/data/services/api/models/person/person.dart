// person.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pretalx_schedule/data/services/api/models/reference/reference.dart';

part 'person.freezed.dart';
part 'person.g.dart';

@freezed
class Person with _$Person {
  const factory Person({
    String? name,
    String? guid,
    int? id,
    String? url,
    List<Reference>? links,
    String? code,
    String? avatar,
    String? biography,
  }) = _Person;

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
}
