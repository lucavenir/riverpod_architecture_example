import 'package:flutter/material.dart';

import '../../domain/entities/sun_times.dart';
import '../models/astronomy_response_dto.dart';

extension CurrentWeatherFromDto on AstronomyDto {
  SunTimes toEntity() {
    return SunTimes(
      timestamp: DateTime.parse(location!.localTime),
      sunrise: _parseTimeOfDay(astronomy.astro.sunrise),
      sunset: _parseTimeOfDay(astronomy.astro.sunset),
    );
  }

  TimeOfDay _parseTimeOfDay(String input) {
    final [hourMinute, amPm] = input.split(' ');
    final [hours, minutes] = hourMinute.split(':');

    final h = int.parse(hours);
    final m = int.parse(minutes);

    return switch (amPm) {
      'AM' => TimeOfDay(hour: h, minute: m),
      'PM' => TimeOfDay(hour: h + 12, minute: m),
      _ => throw const FormatException(),
    };
  }
}
