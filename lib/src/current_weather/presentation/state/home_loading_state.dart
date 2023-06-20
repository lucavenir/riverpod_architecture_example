import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../current_location/presentation/state/current_weather_location.dart';
import '../../../forecast/presentation/state/forecast_weather_state.dart';
import 'current_weather_state.dart';

part 'home_loading_state.g.dart';

@riverpod
FutureOr<void> homeLoading(HomeLoadingRef ref) async {
  await ref.watch(currentLocationControllerProvider.future);
  await ref.watch(currentWeatherProvider.future);
  await ref.watch(forecastWeatherProvider.future);
}
