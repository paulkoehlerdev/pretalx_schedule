import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:pretalx_schedule/model/event.dart';

part 'instance.g.dart';

@JsonSerializable()
class Instance extends Equatable {
  final String name;
  final String url;

  final Set<Event> events;

  Instance({required this.name, required this.url, required this.events});

  factory Instance.fromJson(Map<String, dynamic> json) =>
      _$InstanceFromJson(json);

  Instance copyWith({
    String? name,
    String? url,
    Set<Event>? events,
  }) =>
      Instance(
        name: name ?? this.name,
        url: url ?? this.url,
        events: events ?? Set.of(this.events),
      );

  @override
  List<Object> get props => [name, url, events];

  Map<String, dynamic> toJson() => _$InstanceToJson(this);
}
