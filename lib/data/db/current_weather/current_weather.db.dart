import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../clients/local_db.client.dart';
import '../errors/no_data_available_exception.dart';
import 'models/local_current_weather.model.dart';

part 'current_weather.db.g.dart';

@riverpod
CurrentWeatherDb currentWeatherDb(CurrentWeatherDbRef ref) {
  final db = ref.watch(localDbProvider.select((value) => value.requireValue));
  return CurrentWeatherDb(db);
}

class CurrentWeatherDb {
  const CurrentWeatherDb(this.db);
  final Isar db;

  CurrentWeatherDbModel saveCurrentWeather(CurrentWeatherDbModel model) {
    db.writeTxnSync(() => db.currentWeatherDbModels.putSync(model));
    return model;
  }

  CurrentWeatherDbModel getCurrentWeatherFromDb() {
    final dto = db.writeTxnSync(() => db.currentWeatherDbModels.getSync(0));
    if (dto == null) throw const NoDataAvailableException();
    return dto;
  }
}
