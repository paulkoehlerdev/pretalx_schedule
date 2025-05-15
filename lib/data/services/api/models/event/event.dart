import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';
part 'event.g.dart';

@freezed
class EventApiModel with _$EventApiModel {
  const factory EventApiModel({
    required String name,
    required String slug,
  }) = _EventApiModel;

  factory EventApiModel.fromJson(Map<String, Object?> json) =>
      _$EventApiModelFromJson(json);
}
