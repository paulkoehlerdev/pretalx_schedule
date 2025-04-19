// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/answers.dart';
import '../models/event.dart';
import '../models/events.dart';
import '../models/questions.dart';
import '../models/reviews.dart';
import '../models/rooms.dart';
import '../models/speakers.dart';
import '../models/submissions.dart';
import '../models/tags.dart';
import '../models/talks.dart';

part 'client_client.g.dart';

@RestApi()
abstract class ClientClient {
  factory ClientClient(Dio dio, {String? baseUrl}) = _ClientClient;

  @GET('/api/events/')
  Future<Events> getApiEvents();

  /// Get details of a specific event.
  ///
  /// [event] - Event slug.
  @GET('/api/events/{event}/')
  Future<Event> getApiEventsEvent({
    @Path('event') required String event,
  });

  /// List submissions for an event.
  ///
  /// [event] - Event slug.
  ///
  /// [page] - Page number for pagination.
  ///
  /// [q] - Search through submissions by title and speaker name.
  ///
  /// [anon] - Receive anonymised data.
  ///
  /// [submissionType] - Filter by submission type.
  ///
  /// [state] - Filter by submission state.
  ///
  /// [questions] - Comma separated list of question IDs or "all".
  ///
  /// [isFeatured] - Filter by featured status.
  @GET('/api/events/{event}/submissions')
  Future<Submissions> getApiEventsEventSubmissions({
    @Path('event') required String event,
    @Query('q') String? q,
    @Query('anon') String? anon,
    @Query('submission_type') String? submissionType,
    @Query('state') String? state,
    @Query('questions') String? questions,
    @Query('is_featured') bool? isFeatured,
    @Query('page') int page = 1,
  });

  /// List talks in the current schedule.
  ///
  /// [event] - Event slug.
  ///
  /// [page] - Page number for pagination.
  ///
  /// [q] - Search through talks.
  ///
  /// [questions] - Comma separated list of question IDs or "all".
  @GET('/api/events/{event}/talks')
  Future<Talks> getApiEventsEventTalks({
    @Path('event') required String event,
    @Query('q') String? q,
    @Query('submission_type') String? submissionType,
    @Query('questions') String? questions,
    @Query('page') int page = 1,
  });

  /// List speakers.
  ///
  /// [event] - Event slug.
  ///
  /// [page] - Page number for pagination.
  ///
  /// [q] - Search through speakers by name.
  ///
  /// [questions] - Comma separated list of question IDs or "all".
  @GET('/api/events/{event}/speakers')
  Future<Speakers> getApiEventsEventSpeakers({
    @Path('event') required String event,
    @Query('q') String? q,
    @Query('questions') String? questions,
    @Query('page') int page = 1,
  });

  /// List reviews.
  ///
  /// [event] - Event slug.
  ///
  /// [page] - Page number for pagination.
  ///
  /// [submissionCode] - Filter reviews by submission code.
  @GET('/api/events/{event}/reviews')
  Future<Reviews> getApiEventsEventReviews({
    @Path('event') required String event,
    @Query('submission__code') String? submissionCode,
    @Query('page') int page = 1,
  });

  /// List rooms.
  ///
  /// [event] - Event slug.
  ///
  /// [page] - Page number for pagination.
  @GET('/api/events/{event}/rooms')
  Future<Rooms> getApiEventsEventRooms({
    @Path('event') required String event,
    @Query('page') int page = 1,
  });

  /// List questions.
  ///
  /// [event] - Event slug.
  ///
  /// [page] - Page number for pagination.
  ///
  /// [target] - Filter by question target.
  ///
  /// [variant] - Filter by question variant.
  @GET('/api/events/{event}/questions')
  Future<Questions> getApiEventsEventQuestions({
    @Path('event') required String event,
    @Query('target') String? target,
    @Query('variant') String? variant,
    @Query('page') int page = 1,
  });

  /// List answers.
  ///
  /// [event] - Event slug.
  ///
  /// [page] - Page number for pagination.
  ///
  /// [question] - Filter by question ID.
  ///
  /// [submission] - Filter by submission code.
  ///
  /// [review] - Filter by review ID.
  ///
  /// [person] - Filter by person code.
  @GET('/api/events/{event}/answers')
  Future<Answers> getApiEventsEventAnswers({
    @Path('event') required String event,
    @Query('question') String? question,
    @Query('submission') String? submission,
    @Query('review') String? review,
    @Query('person') String? person,
    @Query('page') int page = 1,
  });

  /// List tags.
  ///
  /// [event] - Event slug.
  ///
  /// [page] - Page number for pagination.
  @GET('/api/events/{event}/tags')
  Future<Tags> getApiEventsEventTags({
    @Path('event') required String event,
    @Query('page') int page = 1,
  });
}
