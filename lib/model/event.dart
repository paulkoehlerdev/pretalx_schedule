import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'event.g.dart';

@JsonSerializable()
class Event extends Equatable {
  String name;
  String slug;
  bool visible;

  Event({required this.name, required this.slug, required this.visible});

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

  @override
  List<Object> get props => [name, slug, visible];

  Map<String, dynamic> toJson() => _$EventToJson(this);
}
