import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pretalx_schedule/model/instance.dart';
import 'package:pretalx_schedule/model/instancecollection.dart';

class InstanceCollectionCubit extends HydratedCubit<InstanceCollection> {
  InstanceCollectionCubit()
      : super(InstanceCollection(instances: Set<Instance>()));

  void add(Instance i) => emit(state.copyWith(
        instances: Set.of(state.instances)
          ..removeWhere((e) => e.url == i.url)
          ..add(i),
      ));

  void remove(String url) => emit(state.copyWith(
        instances: Set.of(state.instances)..removeWhere((e) => e.url == url),
      ));

  void select(String slug) => emit(state.copyWith(
        selectedEventSlug: slug,
      ));

  @override
  InstanceCollection fromJson(Map<String, dynamic> json) =>
      InstanceCollection.fromJson(json);

  @override
  Map<String, dynamic> toJson(InstanceCollection state) => state.toJson();
}
