import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../clients/local_db.client.dart';
import '../../domain/entities/current_weather.model.dart';
import '../../domain/errors/no_data_available_exception.dart';
import '../models/local_current_weather.model.dart';

part 'current_weather_local.source.g.dart';

@riverpod
CurrentWeatherLocal currentWeatherLocal(CurrentWeatherLocalRef ref) {
  final db = ref.watch(localDbProvider.select((value) => value.requireValue));
  return CurrentWeatherLocal(db);
}

class CurrentWeatherLocal {
  const CurrentWeatherLocal(this.db);
  final Isar db;

  LocalCurrentWeatherModel saveCurrentWeather(CurrentWeather currentWeather) {
    final dto = LocalCurrentWeatherModel.fromEntity(currentWeather);
    db.writeTxnSync(() => db.localCurrentWeatherModels.putSync(dto));
    return dto;
  }

  LocalCurrentWeatherModel getCurrentWeatherFromDb() {
    final dto = db.writeTxnSync(() => db.localCurrentWeatherModels.getSync(0));
    if (dto == null) throw const NoDataAvailableException();
    return dto;
  }
}
