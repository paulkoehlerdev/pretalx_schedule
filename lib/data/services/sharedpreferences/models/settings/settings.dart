import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pretalx_schedule/data/services/sharedpreferences/models/event/event.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

@freezed
class Settings with _$Settings {
  const factory Settings({
    required int? selectedEvent,
    required List<Event> events,
  }) = _Settings;

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);
}
