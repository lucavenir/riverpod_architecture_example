import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';

import 'talker.dart';

part 'http_client.g.dart';

/// Base URL of our API service
const baseUrl = 'https://api.weatherapi.com/v1';
const apiKey = String.fromEnvironment('WEATHER_API_KEY');

@riverpod
Dio httpClient(HttpClientRef ref, {bool enableLogging = true}) {
  final options = BaseOptions(baseUrl: baseUrl, queryParameters: {'key': apiKey});
  final client = Dio(options);
  ref.onDispose(client.close);

  if (enableLogging) client.interceptors.add(TalkerDioLogger(talker: talker));

  return client;
}
