import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'instance.g.dart';

@JsonSerializable()
class Instance extends Equatable {
  final String name;
  final String url;

  Instance({required this.name, required this.url});

  factory Instance.fromJson(Map<String, dynamic> json) =>
      _$InstanceFromJson(json);

  @override
  List<Object> get props => [name, url];

  Map<String, dynamic> toJson() => _$InstanceToJson(this);
}
