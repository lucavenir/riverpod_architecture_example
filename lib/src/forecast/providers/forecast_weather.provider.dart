import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../locations/controllers/current_location.controller.dart';
import '../models/forecast_weather.model.dart';
import '../repository/forecast_weather.repository.dart';

part 'forecast_weather.provider.g.dart';

@riverpod
FutureOr<ForecastWeather> forecastWeather(ForecastWeatherRef ref) async {
  final service = ref.watch(forecastWeatherRepositoryProvider);
  final location = await ref.watch(currentLocationControllerProvider.future);
  final forecastWeather = await service.getForecastWeather(location, 14);

  return forecastWeather;
}
