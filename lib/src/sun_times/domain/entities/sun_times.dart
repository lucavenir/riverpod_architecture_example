import 'package:flutter/material.dart';

@freezed
class SunTimes with _$SunTimes {
  const factory SunTimes({
    required DateTime timestamp,
    required TimeOfDay sunrise,
    required TimeOfDay sunset,
  }) = _SunTimes;
}
