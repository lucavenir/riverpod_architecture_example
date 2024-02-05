import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../src/current_weather/data/models/local_current_weather_dto.dart';

part 'local_db.client.g.dart';

@riverpod
Future<Isar> localDb(LocalDbRef ref) async {
  final dir = await path_provider.getApplicationDocumentsDirectory();
  final isar = await Isar.open(
    [LocalCurrentWeatherDtoSchema],
    name: 'riverpod_architecture_example',
    directory: dir.path,
    maxSizeMiB: 2 * Isar.defaultMaxSizeMiB,
  );

  return isar;
}
