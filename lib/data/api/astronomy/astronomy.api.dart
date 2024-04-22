import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../clients/http.client.dart';
import '../../../../data/json.dart';
import 'models/astronomy.api.model.dart';

part 'astronomy.api.g.dart';

@riverpod
AstronomyApi astronomyApi(AstronomyApiRef ref) {
  final client = ref.watch(httpClientProvider());

  return AstronomyApi(client);
}

class AstronomyApi {
  const AstronomyApi(this.dio);
  final Dio dio;

  /// Accepts a `query` and returns the astronomy for a certain `dt` (date)
  Future<AstronomyApiModel> astronomy(String q, String dt) async {
    final result = await dio.get<Json>(
      '/astronomy.json',
      queryParameters: {'q': q, 'dt': dt},
    );

    final data = result.data!;
    return AstronomyApiModel.fromJson(data);
  }
}
