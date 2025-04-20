import 'package:dio/dio.dart';
import 'package:pretalx_schedule/api/models/event.dart';
import 'package:pretalx_schedule/api/models/schedule.dart';
import 'package:pretalx_schedule/model/event.dart';
import 'package:pretalx_schedule/model/eventkey.dart';
import 'package:pretalx_schedule/model/instance.dart';

class Api {
  static Future<Instance> hydrateEventsForInstance(Instance instance) async {
    final dio = Dio();
    final response = await dio.get("${instance.url}/api/events");

    final oldVisible =
        instance.events.where((e) => e.visible).map((e) => e.slug).toSet();

    return instance.copyWith(
      events: (response.data as List<dynamic>)
          .map((e) => ApiBaseEvent.fromJson(e))
          .where((e) => e.isPublic)
          .map((e) => Event(
              name: e.name.entries.first.value,
              slug: e.slug,
              visible: oldVisible.contains(e.slug)))
          .toSet(),
    );
  }

  static Future<ApiSchedule> loadFullEvent(EventKey key) async {
    final dio = Dio();
    final response = await dio.get(
        "${key.instance.url}/${key.event.slug}/schedule/export/schedule.json");

    return ApiSchedule.fromJson(
        response.data['schedule'] as Map<String, dynamic>);
  }
}
