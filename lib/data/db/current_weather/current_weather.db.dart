import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../clients/local_db.client.dart';
import '../errors/no_data_available_exception.dart';

part 'current_weather.db.g.dart';

@riverpod
CurrentWeatherDb currentWeatherDb(CurrentWeatherDbRef ref) {
  final db = ref.watch(localDbProvider.select((value) => value.requireValue));
  return CurrentWeatherDb(db);
}

class CurrentWeatherDb {
  const CurrentWeatherDb(this.db);
  final AppDatabase db;

  Future<CurrentWeatherDbModelCompanion> saveCurrentWeather(
    CurrentWeatherDbModelCompanion model,
  ) async {
    // db.writeTxnSync(() => db.currentWeatherDbModels.putSync(model));
    await db.into(db.currentWeatherDbModel).insert(model);
    return model;
  }

  Future<List<CurrentWeatherDbModelData>> getCurrentWeatherFromDb() async {
    final dto = await db.select(db.currentWeatherDbModel).get();
    //final dto = db.writeTxnSync(() => db.currentWeatherDbModels.getSync(0));
    if (dto.isEmpty) throw const NoDataAvailableException();
    return dto;
  }
}
