// schedule.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pretalx_schedule/data/services/api/models/conference/conference.dart';

part 'schedule.freezed.dart';
part 'schedule.g.dart';

@freezed
class Schedule with _$Schedule {
  const factory Schedule({
    required ScheduleData schedule,
    String? schema,
    Generator? generator,
  }) = _Schedule;

  factory Schedule.fromJson(Map<String, dynamic> json) =>
      _$ScheduleFromJson(json);
}

@freezed
class ScheduleData with _$ScheduleData {
  const factory ScheduleData({
    required String version,
    @JsonKey(name: 'base_url') String? baseUrl,
    required Conference conference,
  }) = _ScheduleData;

  factory ScheduleData.fromJson(Map<String, dynamic> json) =>
      _$ScheduleDataFromJson(json);
}

@freezed
class Generator with _$Generator {
  const factory Generator({
    String? name,
    String? version,
    String? url,
  }) = _Generator;

  factory Generator.fromJson(Map<String, dynamic> json) =>
      _$GeneratorFromJson(json);
}
