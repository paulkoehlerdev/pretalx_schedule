// room.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room.freezed.dart';
part 'room.g.dart';

@freezed
class Room with _$Room {
  const factory Room({
    required String name,
    String? slug,
    String? type,
    required String guid,
    @JsonKey(name: 'stream_id') String? streamId,
    String? description,
    int? capacity,
    String? url,
    RoomFeatures? features,
    HubAssembly? assembly,
  }) = _Room;

  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);
}

@freezed
class RoomFeatures with _$RoomFeatures {
  const factory RoomFeatures({
    String? recording,
  }) = _RoomFeatures;

  factory RoomFeatures.fromJson(Map<String, dynamic> json) =>
      _$RoomFeaturesFromJson(json);
}

@freezed
class HubAssembly with _$HubAssembly {
  const factory HubAssembly({
    required String name,
    required String slug,
    required String guid,
    String? url,
  }) = _HubAssembly;

  factory HubAssembly.fromJson(Map<String, dynamic> json) =>
      _$HubAssemblyFromJson(json);
}
