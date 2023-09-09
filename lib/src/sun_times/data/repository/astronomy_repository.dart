import 'package:intl/intl.dart';

import '../../../locations/domain/entities/current_location.dart';
import '../../domain/entities/sun_times.dart';
import '../../domain/repository/sun_times_repository_interface.dart';
import '../adapters/sun_times_adapter.dart';
import '../models/astronomy_response_dto.dart';
import '../sources/astronomy_api.dart';

class SunTimesRepository implements SunTimesRepositoryInterface {
  const SunTimesRepository(this.api);
  final AstronomyApi api;

  @override
  Future<SunTimes> getTodaySunTimes(CurrentLocation location) async {
    final now = DateTime.now();
    final formatter = DateFormat.yMd(now);
    final date = formatter.format(now);

    final result = await api.astronomy(location.cityName, date);

    final model = AstronomyDto.fromJson(result);
    return model.toEntity();
  }
}
