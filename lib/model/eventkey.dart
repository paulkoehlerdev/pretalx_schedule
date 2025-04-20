import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:pretalx_schedule/model/event.dart';
import 'package:pretalx_schedule/model/instance.dart';

part 'eventkey.g.dart';

@JsonSerializable()
class EventKey extends Equatable {
  final Event event;
  final Instance instance;

  const EventKey({
    required this.event,
    required this.instance,
  });

  factory EventKey.fromJson(Map<String, dynamic> json) =>
      _$EventKeyFromJson(json);

  @override
  List<Object?> get props => [event, instance];

  Map<String, dynamic> toJson() => _$EventKeyToJson(this);
}
