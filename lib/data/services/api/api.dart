import 'package:pretalx_schedule/data/services/api/models/conference/conference.dart';
import 'package:pretalx_schedule/data/services/api/models/event/event.dart';
import 'package:pretalx_schedule/utils/result.dart';

abstract class Api {
  Future<Result<List<Event>>> getEvents(String baseUrl);

  Future<Result<Conference>> getConference(Event event);
}
