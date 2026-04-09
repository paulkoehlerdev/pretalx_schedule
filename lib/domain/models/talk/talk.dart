import 'package:freezed_annotation/freezed_annotation.dart';

part 'talk.freezed.dart';
part 'talk.g.dart';

@freezed
class Talk with _$Talk {
  const factory Talk({
    required String title,
    required String? subtitle,
  }) = _Talk;

  factory Talk.fromJson(Map<String, dynamic> json) => _$TalkFromJson(json);
}
