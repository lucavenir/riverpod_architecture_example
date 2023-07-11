import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_architecture_example/base/json.dart';
import 'package:riverpod_architecture_example/client/dio.dart';

part 'astronomy_api.g.dart';

@riverpod
AstronomyApi astronomyApi(AstronomyApiRef ref) {
  final client = ref.watch(httpClientProvider(loggerLabel: 'AstronomyApi'));

  return AstronomyApi(client);
}

class AstronomyApi {
  const AstronomyApi(this.dio);
  final Dio dio;

  /// Accepts a query q and returns the current weather
  Future<Json> astronomy(String q, String dt) async {
    final result = await dio.get<Json>(
      '/astronomy.json',
      // queryParameters: TODO
    );

    final data = result.data!;

    return data;
  }
}
