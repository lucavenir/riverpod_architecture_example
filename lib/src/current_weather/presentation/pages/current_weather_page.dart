// ignore_for_file: use_colored_box

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../clients/connectivity_check_provider.dart';
import '../../../forecast/presentation/widgets/forecast_widget.dart';
import '../../../locations/presentation/state/current_weather_location.dart';
import '../../../locations/presentation/widgets/search_bar.dart';
import '../../../shared/presentation/widgets/standard_when.dart';
import '../state/current_weather_state.dart';
import '../view/current_date_view.dart';
import '../view/current_weather_views.dart';

class CurrentWeatherPage extends HookConsumerWidget {
  const CurrentWeatherPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentyCity = ref.watch(
      currentLocationControllerProvider.select((value) => value.valueOrNull?.cityName ?? ''),
    );
    final currentWeather = ref.watch(currentWeatherProvider);

    ref.listen(connectivityStreamProvider, (_, next) {
      next.whenData((hasInternet) {
        final message = hasInternet ? 'You are online' : 'You are offline';
        final color = hasInternet ? Colors.green : Colors.red;

        final snackBar = SnackBar(
          content: Text(message),
          backgroundColor: color,
          duration: const Duration(milliseconds: 1500),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      });
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Center(child: Text(currentyCity)),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const LocationSearchBar(),
            Flexible(
              child: currentWeather.standardWhen(
                data: (data) => ListView(
                  children: [
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
                            style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 96),
                    Center(
                      child: Text(
                        "Today's weather!",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    Center(child: Text(data.weather)),
                    Center(
                      child: Text(
                        '${data.temp}°C',
                        style: const TextStyle(fontSize: 76),
                      ),
                    ),
                    Image.network(
                      data.image,
                      height: 80,
                      fit: BoxFit.fitHeight,
                    ),
                    const SizedBox(height: 96),
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
                              title: data.formattedWind,
                              subtitle: 'Wind',
                            ),
                          ),
                          Expanded(
                            child: _WeatherIcon(
                              icon: Icons.water_drop_outlined,
                              title: data.formattedHumidity,
                              subtitle: 'Humidity',
                            ),
                          ),
                          Expanded(
                            child: _WeatherIcon(
                              icon: Icons.thermostat,
                              title: data.formattedTemp,
                              subtitle: 'Perceived Temperature',
                            ),
                          ),
                        ],
                      ),
                    ),
                    const ForecastWidget(),
                  ],
                ),
              ),
            ),
          ],
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
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            const SizedBox(height: 4),
            AutoSizeText(
              title,
              maxLines: 1,
              style: textTheme.labelLarge?.copyWith(
                fontSize: textTheme.labelLarge?.fontSize ?? 0 / sizeFactor,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            AutoSizeText(
              subtitle,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: textTheme.labelSmall?.copyWith(
                fontSize: 10 / sizeFactor,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
