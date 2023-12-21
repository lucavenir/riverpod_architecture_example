import 'package:dio/dio.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:logging/logging.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';

import '../logs/logger.dart';
import '../logs/logger_color.dart';
import 'talker.dart';

/// Base URL of our API service
const baseUrl = 'https://api.weatherapi.com/v1';

@riverpod
Dio httpClient(
  HttpClientRef ref, {
  required String loggerLabel,
  bool logRequestHeader = false,
  bool logRequestBody = false,
  bool logResponseHeader = false,
  bool logResponseBody = true,
}) {
  const apiKey = String.fromEnvironment('WEATHER_API_KEY');

  final talker = ref.watch(talkerProvider);

  final options = BaseOptions(
    baseUrl: baseUrl,
    queryParameters: {'key': apiKey},
    receiveTimeout: 12.seconds,
    sendTimeout: 12.seconds,
    connectTimeout: 12.seconds,
  );

  final client = Dio(options);

  final loggerInterceptor = TalkerDioLogger(talker: talker);
  client.interceptors.add(loggerInterceptor);

  ref.onDispose(client.close);
  return client;
}
