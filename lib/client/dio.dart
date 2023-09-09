import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:logging/logging.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../logs/logger.dart';
import '../logs/logger_color.dart';

part 'dio.g.dart';

@riverpod
Dio httpClient(
  HttpClientRef ref, {
  required String loggerLabel,
  bool logRequestHeader = false,
  bool logRequestBody = false,
  bool logResponseHeader = false,
  bool logResponseBody = true,
}) {
  final logger = ref.watch(loggerProvider(loggerLabel, color: LoggerColor.cyan, level: Level.FINE));

  final options = BaseOptions(
    baseUrl: 'https://api.weatherapi.com/v1',
    queryParameters: {'key': dotenv.env['WEATHER_API_KEY']},
    receiveTimeout: 12.seconds,
    sendTimeout: 12.seconds,
    connectTimeout: 12.seconds,
  );

  final loggerInterceptor = PrettyDioLogger(
    logPrint: logger.fine,
    maxWidth: 120,
    compact: false,
    requestHeader: logRequestHeader,
    requestBody: logRequestBody,
    responseHeader: logResponseHeader,
    responseBody: logResponseBody,
  );
  final dio = Dio(options);
  if (kDebugMode) dio.interceptors.add(loggerInterceptor);

  ref.onDispose(dio.close);
  return dio;
}
