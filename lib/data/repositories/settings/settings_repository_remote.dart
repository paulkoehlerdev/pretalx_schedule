import 'package:flutter/foundation.dart';
import 'package:pretalx_schedule/data/repositories/settings/settings_repository.dart';
import 'package:pretalx_schedule/data/services/api/api.dart';
import 'package:pretalx_schedule/data/services/api/models/event/event.dart'
    as apiEvent;
import 'package:pretalx_schedule/data/services/sharedpreferences/models/event/event.dart'
    as spEvent;
import 'package:pretalx_schedule/data/services/sharedpreferences/sharedpreferences.dart';
import 'package:pretalx_schedule/domain/models/event/event.dart';
import 'package:pretalx_schedule/utils/result.dart';

class SettingsRepositoryRemote extends ChangeNotifier
    implements SettingsRepository {
  Api api;
  SharedPreferences sharedPreferences;

  SettingsRepositoryRemote({
    required this.api,
    required this.sharedPreferences,
  });

  @override
  Future<Result<void>> addEvents(List<Event> event) {
    // TODO: implement addEvents
    try {} finally {
      notifyListeners();
    }
  }

  @override
  Future<Result<List<Event>>> loadEvents(String baseUrl) async {
    try {
      final result = await api.getEvents(baseUrl);
      switch (result) {
        case Ok<List<apiEvent.Event>>():
          return Result.ok(
            result.value.map((e) => Event(slug: e.slug)).toList(),
          );
        case Error<List<apiEvent.Event>>():
          return Result.error(result.error);
      }
    } finally {
      notifyListeners();
    }
  }

  @override
  Future<Result<Event?>> getSelectedEvent() async {
    try {
      final result = await sharedPreferences.getSelectedEvent();
      switch (result) {
        case Ok<spEvent.Event?>():
          return Result.ok(
            result.value == null ? Event(slug: result.value!.slug) : null,
          );
        case Error<spEvent.Event?>():
          return Result.error(result.error);
      }
    } finally {
      notifyListeners();
    }
  }

  @override
  Future<Result<void>> setEvent(Event event) {
    // TODO: implement setEvent
    try {} finally {
      notifyListeners();
    }
  }
}
