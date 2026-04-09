import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:pretalx_schedule/data/services/api/api.dart';
import 'package:pretalx_schedule/data/services/api/models/conference/conference.dart';
import 'package:pretalx_schedule/data/services/api/models/event/event.dart';
import 'package:pretalx_schedule/data/services/api/models/schedule/schedule.dart';
import 'package:pretalx_schedule/utils/result.dart';

class RemoteApi implements Api {
  final http.Client _client;

  RemoteApi({http.Client? client}) : _client = client ?? http.Client();

  @override
  Future<Result<List<Event>>> getEvents(String baseUrl) async {
    try {
      final uri = Uri.parse('$baseUrl/api/events');

      final response = await _client.get(uri);

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body) as List<dynamic>;
        return Result.ok(
          json.map((element) => Event.fromJson(element)).toList(),
        );
      } else {
        return const Result.error(HttpException("Invalid response"));
      }
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  @override
  Future<Result<Conference>> getConference(Event event) async {
    try {
      final uri = Uri.parse('${event.urls.base}/schedule/export/schedule.json');
      final response = await _client.get(uri);

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body) as Map<String, dynamic>;
        return Result.ok(
          Schedule.fromJson(json).schedule.conference,
        );
      } else {
        return const Result.error(HttpException("Invalid response"));
      }
    } on Exception catch (error) {
      return Result.error(error);
    }
  }
}
