import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../locations/domain/entities/current_location.dart';
import '../../domain/entities/sun_times.dart';
import '../adapters/sun_times_adapter.dart';
import '../models/astronomy_response_dto.dart';
import '../sources/astronomy_api.dart';

part 'astronomy_repository.g.dart';

@riverpod
SunTimesRepository sunTimesRepository(SunTimesRepositoryRef ref) {
  final api = ref.watch(astronomyApiProvider);
  return SunTimesRepository(api);
}

class SunTimesRepository {
  const SunTimesRepository(this.api);
  final AstronomyApi api;

  Future<SunTimes> getTodaySunTimes(CurrentLocation location) async {
    final now = DateTime.now();
    final formatter = DateFormat.yMd(now);
    final date = formatter.format(now);

    final result = await api.astronomy(location.cityName, date);

    final model = AstronomyDto.fromJson(result);
    return model.toEntity();
  }
}
