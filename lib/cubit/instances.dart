import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pretalx_schedule/model/instance.dart';

class InstancesCubit extends HydratedCubit<List<Instance>> {
  static const _jsonKey = 'instances';

  InstancesCubit() : super([]);

  void add(Instance i) => emit(state..add(i));

  @override
  List<Instance> fromJson(Map<String, dynamic> json) =>
      (json[_jsonKey] as List<dynamic>)
          .map((i) => i as Map<String, dynamic>)
          .map((i) => Instance.fromJson(i))
          .toList(growable: true);

  @override
  Map<String, dynamic> toJson(List<Instance> state) => {_jsonKey: state.map((i) => i.toJson())};
}
