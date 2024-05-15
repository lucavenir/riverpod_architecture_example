import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../clients/http.client.dart';
import '../../../clients/retrofit_client.dart';
import '../models/sun_times.model.dart';

part 'astronomy.repository.g.dart';

@riverpod
SunTimesRepository sunTimesRepository(SunTimesRepositoryRef ref) {
  final client = ref.watch(httpClientProvider());
  return SunTimesRepository(client);
}

class SunTimesRepository {
  const SunTimesRepository(this.client);
  final WeatherApiClient client;

  Future<SunTimes> getTodaySunTimes(String cityName) async {
    final now = DateTime.now();
    final formatter = DateFormat.yMd(now);
    final date = formatter.format(now);

    final model = await client.getAstronomy(cityName, date);

    return model.toEntity();
  }
}
