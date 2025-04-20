import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:pretalx_schedule/model/event.dart';
import 'package:pretalx_schedule/model/eventkey.dart';
import 'package:pretalx_schedule/model/instance.dart';

part 'instancecollection.g.dart';

@JsonSerializable()
class InstanceCollection extends Equatable {
  final String? selectedEventSlug;
  final Set<Instance> instances;

  InstanceCollection({this.selectedEventSlug, required this.instances});

  factory InstanceCollection.fromJson(Map<String, dynamic> json) =>
      _$InstanceCollectionFromJson(json);

  InstanceCollection copyWith({
    String? selectedEventSlug,
    Set<Instance>? instances,
  }) =>
      InstanceCollection(
          selectedEventSlug: selectedEventSlug ?? this.selectedEventSlug,
          instances: instances ?? this.instances);

  bool hasSlug(String slug) {
    return instances
        .any((instance) => instance.events.any((event) => event.slug == slug));
  }

  EventKey? get currentKey {
    if (selectedEventSlug == null) {
      return null;
    }

    for (var instance in instances) {
      for (var event in instance.events) {
        if (event.slug == selectedEventSlug) {
          return EventKey(event: event, instance: instance);
        }
      }
    }

    return null;
  }

  List<Event> get visibleEvents =>
      instances.expand((i) => i.events).where((e) => e.visible).toList();

  @override
  List<Object> get props => [selectedEventSlug ?? "", instances];

  Map<String, dynamic> toJson() => _$InstanceCollectionToJson(this);
}
