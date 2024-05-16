import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/astronomy/astronomy.api.model.dart';

part 'sun_times.model.freezed.dart';

@freezed
class SunTimes with _$SunTimes {
  const factory SunTimes({
    required DateTime timestamp,
    required TimeOfDay sunrise,
    required TimeOfDay sunset,
  }) = _SunTimes;
}

extension SunTimesApiMapper on AstronomyApiModel {
  SunTimes toEntity() {
    return SunTimes(
      timestamp: DateTime.parse(location!.localTime),
      sunrise: parseTimeOfDay(astronomy.astro.sunrise!),
      sunset: parseTimeOfDay(astronomy.astro.sunset!),
    );
  }

  @protected
  @visibleForTesting
  TimeOfDay parseTimeOfDay(String input) {
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
