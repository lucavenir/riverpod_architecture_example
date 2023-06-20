// ignore_for_file: use_colored_box

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../current_location/presentation/state/current_weather_location.dart';
import '../../../forecast/presentation/widgets/forecast_widget.dart';
import '../../../search/presentation/widgets/search_bar.dart';
import '../state/current_weather_state.dart';
import '../state/home_loading_state.dart';
import '../view/current_date_view.dart';
import '../view/current_weather_views.dart';

class CurrentWeatherPage extends HookConsumerWidget {
  const CurrentWeatherPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeLoadingResult = ref.watch(homeLoadingProvider);

    return homeLoadingResult.when(
      data: (_) {
        final currentLocation = ref.watch(
          currentLocationControllerProvider.select((value) => value.requireValue),
        );
        final currentWeather = ref.watch(
          currentWeatherProvider.select((value) => value.requireValue),
        );

        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            title: Center(child: Text(currentLocation.cityName)),
          ),
          body: SafeArea(
            child: Column(
              children: [
                const LocationSearchBar(),
                Flexible(
                  child: ListView(
                    children: [
                      ...[
                        const SizedBox(height: 10),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            child: Center(
                              child: Text(
                                DateTime.now().formattedCurrentDate,
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Center(
                          child: Text(
                            'Il meteo di oggi!',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Center(child: Text(currentWeather.weather)),
                        const SizedBox(height: 20),
                        Center(
                          child: Text(
                            '${currentWeather.temp}°C',
                            style: const TextStyle(fontSize: 75),
                          ),
                        ),
                        Image.network(
                          currentWeather.image,
                          height: 80,
                          fit: BoxFit.fitHeight,
                        ),
                        const SizedBox(height: 20),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                          margin: const EdgeInsets.symmetric(horizontal: 12),
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: _WeatherIcon(
                                  icon: Icons.air,
                                  title: currentWeather.formattedWind,
                                  subtitle: 'Vento',
                                ),
                              ),
                              Expanded(
                                child: _WeatherIcon(
                                  icon: Icons.water_drop_outlined,
                                  title: currentWeather.formattedHumidity,
                                  subtitle: 'Umidità',
                                ),
                              ),
                              Expanded(
                                child: _WeatherIcon(
                                  icon: Icons.thermostat,
                                  title: currentWeather.formattedTemp,
                                  subtitle: 'Temp. percepita',
                                ),
                              ),
                            ],
                          ),
                        ),
                        const ForecastWidget(),
                      ]
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
      error: (error, stackTrace) => const Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.sentiment_very_dissatisfied),
                Text('Qualcosa è andato storto'),
              ],
            ),
          ),
        ),
      ),
      loading: () => const Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
                SizedBox(height: 20),
                Text('Loading...'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _WeatherIcon extends StatelessWidget {
  const _WeatherIcon({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  final IconData icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    final sizeFactor = MediaQuery.of(context).textScaleFactor;
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 48 / sizeFactor,
            ),
            const SizedBox(height: 4),
            AutoSizeText(
              title,
              maxLines: 1,
              style: textTheme.labelLarge?.copyWith(
                fontSize: textTheme.labelLarge?.fontSize ?? 0 / sizeFactor,
              ),
            ),
            AutoSizeText(
              subtitle,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: textTheme.labelSmall?.copyWith(
                fontSize: 10 / sizeFactor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
