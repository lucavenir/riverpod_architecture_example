import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../clients/local_db.dart';
import '../../../../errors/no_data_available_exception.dart';
import '../../domain/entities/current_weather.dart';
import '../adapters/local_current_weather_adapter.dart';
import '../models/local_current_weather_dto.dart';

part 'current_weather_local.g.dart';

@riverpod
CurrentWeatherLocal currentWeatherLocal(CurrentWeatherLocalRef ref) {
  final db = ref.watch(localDbProvider);
  return CurrentWeatherLocal(db);
}

class CurrentWeatherLocal {
  const CurrentWeatherLocal(this.db);
  final Isar db;

  LocalCurrentWeatherDto saveCurrentWeather(CurrentWeather currentWeather) {
    final dto = currentWeather.toDto();
    db.writeTxnSync(() => db.localCurrentWeatherDtos.putSync(dto));
    return dto;
  }

  CurrentWeather getCurrentWeatherFromDb() {
    final dto = db.writeTxnSync(() => db.localCurrentWeatherDtos.getSync(0));
    if (dto == null) throw const NoDataAvailableException();
    return dto.toEntity();
  }
}
