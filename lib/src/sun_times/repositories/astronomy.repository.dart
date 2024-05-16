import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/api/weather_api.dart';
import '../models/sun_times.model.dart';

part 'astronomy.repository.g.dart';

@riverpod
SunTimesRepository sunTimesRepository(SunTimesRepositoryRef ref) {
  final api = ref.watch(weatherApiProvider);
  return SunTimesRepository(api);
}

class SunTimesRepository {
  const SunTimesRepository(this.client);
  final WeatherApi client;

  Future<SunTimes> getTodaySunTimes(String cityName) async {
    final now = DateTime.now();
    final formatter = DateFormat.yMd(now);
    final date = formatter.format(now);

    final model = await client.getAstronomy(cityName, date);

    return model.toEntity();
  }
}
