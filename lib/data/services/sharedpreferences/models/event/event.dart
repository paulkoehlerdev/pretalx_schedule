import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pretalx_schedule/data/services/sharedpreferences/models/instance/instance.dart';

part 'event.freezed.dart';
part 'event.g.dart';

@freezed
class Event with _$Event {
  const factory Event({
    required String name,
    required String slug,
    required Instance instance,
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}
