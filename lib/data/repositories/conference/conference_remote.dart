import 'package:pretalx_schedule/data/repositories/conference/conference.dart';
import 'package:pretalx_schedule/data/services/api/api.dart';
import 'package:pretalx_schedule/data/services/api/models/conference/conference.dart';
import 'package:pretalx_schedule/data/services/api/models/event/event.dart';
import 'package:pretalx_schedule/utils/result.dart';

class ConferenceRepositoryRemote implements ConferenceRepository {
  final Api api;

  final Map<Event, Conference> _conferenceCache = {};

  ConferenceRepositoryRemote({required this.api});

  @override
  Future<Result<Conference>> getConference(Event event) async {
    if (_conferenceCache.containsKey(event)) {
      return Result.ok(_conferenceCache[event]!);
    }

    return reloadConference(event);
  }

  @override
  Future<Result<Conference>> reloadConference(Event event) async {
    final result = await api.getConference(event);
    switch (result) {
      case Ok<Conference>():
        _conferenceCache[event] = result.value;
        return Result.ok(result.value);
      case Error<Conference>():
        return Result.error(result.error);
    }
  }

  @override
  Future<Result<List<Event>>> getEvents(String baseUrl) {
    return api.getEvents(baseUrl);
  }
}
