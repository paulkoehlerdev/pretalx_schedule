// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';

import 'client/client_client.dart';

/// Conference Management API `v3.0.0`.
///
/// API for managing conference events, submissions, talks, speakers, and more.
class RestClient {
  RestClient(
    Dio dio, {
    String? baseUrl,
  })  : _dio = dio,
        _baseUrl = baseUrl;

  final Dio _dio;
  final String? _baseUrl;

  static String get version => '3.0.0';

  ClientClient? _client;

  ClientClient get client => _client ??= ClientClient(_dio, baseUrl: _baseUrl);
}
