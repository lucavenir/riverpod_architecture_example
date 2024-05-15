import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../clients/http.client.dart';
import '../../../clients/retrofit_client.dart';
import 'models/astronomy.api.model.dart';

part 'astronomy.api.g.dart';

@riverpod
AstronomyApi astronomyApi(AstronomyApiRef ref) {
  final client = ref.watch(httpClientProvider());

  return AstronomyApi(client);
}

class AstronomyApi {
  const AstronomyApi(this.dio);
  final RetrofitClient dio;

  /// Accepts a `query` and returns the astronomy for a certain `dt` (date)
  Future<AstronomyApiModel> astronomy(String q, String dt) async {
    final result = await dio.getAstronomy(q, dt);

    return result;
  }
}
