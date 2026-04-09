import 'package:flutter/foundation.dart';
import 'package:pretalx_schedule/domain/models/event/event.dart';
import 'package:pretalx_schedule/utils/result.dart';

abstract class SettingsRepository extends ChangeNotifier {
  Future<Result<Event?>> getSelectedEvent();

  Future<Result<List<Event>>> loadEvents(String baseUrl);

  Future<Result<void>> addEvents(List<Event> event);

  Future<Result<void>> setEvent(Event event);
}
