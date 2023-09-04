import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../shared/presentation/widgets/standard_when.dart';
import '../state/forecast_weather_state.dart';
import '../view/forecast_weather_views.dart';
import 'forecast_box.dart';

class ForecastWidget extends ConsumerWidget {
  const ForecastWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final forecastWeather = ref.watch(forecastWeatherProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'The next days...',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 20),
          Container(
            alignment: Alignment.center,
            child: forecastWeather.standardWhen(
              data: (data) => SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (final element in data.previsions)
                      ForecastBox(
                        title: element.formattedTemperature,
                        image: element.image,
                        date: element.date,
                      ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
