import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pretalx_schedule/model/instance.dart';
import 'package:pretalx_schedule/model/instancecollection.dart';

class InstanceCollectionCubit extends HydratedCubit<InstanceCollection> {
  InstanceCollectionCubit() : super(InstanceCollection());

  void add(Instance i) => emit(state..add(i));

  void select(int i) => emit(state..select(i));

  @override
  InstanceCollection fromJson(Map<String, dynamic> json) =>
      InstanceCollection.fromJson(json);

  @override
  Map<String, dynamic> toJson(InstanceCollection state) => state.toJson();
}
