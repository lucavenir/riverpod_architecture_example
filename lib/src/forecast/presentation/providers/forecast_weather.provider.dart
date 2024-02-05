import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../locations/presentation/controllers/current_location.controller.dart';
import '../../data/repository/forecast_weather_repository.dart';
import '../../domain/entities/forecast_weather.dart';

part 'forecast_weather.provider.g.dart';

@riverpod
FutureOr<ForecastWeather> forecastWeather(ForecastWeatherRef ref) async {
  final service = ref.watch(forecastWeatherRepositoryProvider);
  final location = await ref.watch(currentLocationControllerProvider.future);
  final forecastWeather = await service.getForecastWeather(location, 14);

  return ForecastWeather.fromModel(forecastWeather);
}
