import 'package:pretalx_schedule/data/services/sharedpreferences/models/event/event.dart';
import 'package:pretalx_schedule/data/services/sharedpreferences/models/instance/instance.dart';
import 'package:pretalx_schedule/utils/result.dart';

abstract class SharedPreferences {
  Future<Result<Event?>> getSelectedEvent();

  Future<Result<List<Instance>>> getAllInstances();

  Future<Result<void>> addEvent(Event event);

  Future<Result<void>> removeEvent(String slug);
}
