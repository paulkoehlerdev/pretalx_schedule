import 'package:freezed_annotation/freezed_annotation.dart';

part 'instance.freezed.dart';
part 'instance.g.dart';

@freezed
class InstanceApiModel with _$InstanceApiModel {
  const factory InstanceApiModel({
    required String name,
    required String url,
  }) = _InstanceApiModel;

  factory InstanceApiModel.fromJson(Map<String, Object?> json) =>
      _$InstanceApiModelFromJson(json);
}
