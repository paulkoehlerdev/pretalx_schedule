import 'package:pretalx_schedule/data/services/api/models/event/event.dart';
import 'package:pretalx_schedule/data/services/api/models/instance/instance.dart';
import 'package:pretalx_schedule/utils/result.dart';

abstract class Api {
  Future<Result<List<EventApiModel>>> getEvents(InstanceApiModel instance);
}
