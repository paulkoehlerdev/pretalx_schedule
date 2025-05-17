// day.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pretalx_schedule/data/services/api/models/person/person.dart';
import 'package:pretalx_schedule/data/services/api/models/reference/reference.dart';

part 'talk.freezed.dart';
part 'talk.g.dart';

@freezed
class Day with _$Day {
  const factory Day({
    required int index,
    required String date,
    @JsonKey(name: 'day_start') required String dayStart,
    @JsonKey(name: 'day_end') required String dayEnd,
    required Map<String, List<Talk>> rooms,
  }) = _Day;

  factory Day.fromJson(Map<String, dynamic> json) => _$DayFromJson(json);
}

@freezed
class Talk with _$Talk {
  const factory Talk({
    required String guid,
    String? code,
    required int id,
    String? logo,
    required String date,
    required String start,
    required String duration,
    required String room,
    required String slug,
    required String url,
    required String title,
    required String? subtitle,
    required String? track,
    required String type,
    required String? language,
    required String? abstract,
    String? description,
    String? recordingLicense,
    @JsonKey(name: 'do_not_record') bool? doNotRecord,
    @JsonKey(name: 'do_not_stream') dynamic doNotStream,
    required List<Person> persons,
    required List<Reference> links,
    @JsonKey(name: 'feedback_url') String? feedbackUrl,
    List<Reference>? attachments,
  }) = _Talk;

  factory Talk.fromJson(Map<String, dynamic> json) => _$TalkFromJson(json);
}
