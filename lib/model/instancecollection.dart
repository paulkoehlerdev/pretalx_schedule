import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:pretalx_schedule/model/instance.dart';

part 'instancecollection.g.dart';

@JsonSerializable()
class InstanceCollection extends Equatable {
  int selected;
  final List<Instance> instances;

  InstanceCollection({this.selected = 0, this.instances = const []});

  factory InstanceCollection.fromJson(Map<String, dynamic> json) =>
      _$InstanceCollectionFromJson(json);

  void select(int i) {
    selected = i;
  }

  void add(Instance i) {
    instances.add(i);
  }

  @override
  List<Object> get props => [selected, instances];

  Map<String, dynamic> toJson() => _$InstanceCollectionToJson(this);
}
