// reference.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reference.freezed.dart';
part 'reference.g.dart';

@freezed
class Reference with _$Reference {
  const factory Reference({
    String? type,
    required String url,
    String? title,
  }) = _Reference;

  factory Reference.fromJson(Map<String, dynamic> json) =>
      _$ReferenceFromJson(json);
}