import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../src/current_weather/data/models/local_current_weather_dto.dart';

Future<Isar> initializeIsar() async {
  final dir = await getApplicationDocumentsDirectory();
  final isar = await Isar.open(
    [LocalCurrentWeatherDtoSchema],
    name: 'riverpod_architecture_example',
    directory: dir.path,
    maxSizeMiB: 2 * Isar.defaultMaxSizeMiB,
  );

  return isar;
}
