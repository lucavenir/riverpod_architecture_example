import 'package:dio/dio.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'dio.dart';

part 'base_dio.g.dart';

@riverpod
Dio baseHttpClient(BaseHttpClientRef ref) {
  final options = BaseOptions(
    baseUrl: baseUrl,
    queryParameters: baseQueryParams,
    receiveTimeout: 12.seconds,
    sendTimeout: 12.seconds,
    connectTimeout: 12.seconds,
  );
  final dio = Dio(options);
  ref.onDispose(dio.close);
  return dio;
}
