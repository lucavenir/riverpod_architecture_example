import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../locations/presentation/controllers/current_location_controller.dart';
import '../../domain/entities/forecast_weather.dart';
import '../../domain/interfaces/forecast_weather_repository_interface.dart';

part 'forecast_weather_provider.g.dart';

@riverpod
FutureOr<ForecastWeather> forecastWeather(ForecastWeatherRef ref) async {
  final service = ref.watch(forecastWeatherRepositoryProvider);
  final location = await ref.watch(currentLocationControllerProvider.future);
  final forecastWeather = await service.getForecastWeather(location, 14);

  return forecastWeather;
}
