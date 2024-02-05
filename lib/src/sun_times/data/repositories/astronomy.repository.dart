import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../locations/domain/entities/current_location.model.dart';
import '../models/astronomy.model.dart';
import '../sources/astronomy_api.source.dart';

part 'astronomy.repository.g.dart';

@riverpod
SunTimesRepository sunTimesRepository(SunTimesRepositoryRef ref) {
  final api = ref.watch(astronomyApiProvider);
  return SunTimesRepository(api);
}

class SunTimesRepository {
  const SunTimesRepository(this.api);
  final AstronomyApi api;

  Future<AstronomyModel> getTodaySunTimes(CurrentLocation location) async {
    final now = DateTime.now();
    final formatter = DateFormat.yMd(now);
    final date = formatter.format(now);

    final result = await api.astronomy(location.cityName, date);

    final model = AstronomyModel.fromJson(result);
    return model;
  }
}
