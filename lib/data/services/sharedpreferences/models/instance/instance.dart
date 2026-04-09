import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pretalx_schedule/data/services/api/models/event/event.dart';

part 'instance.freezed.dart';
part 'instance.g.dart';

@freezed
class Instance with _$Instance {
  const factory Instance({
    required String name,
    required String url,
  }) = _Instance;

  factory Instance.fromJson(Map<String, dynamic> json) =>
      _$InstanceFromJson(json);
}
