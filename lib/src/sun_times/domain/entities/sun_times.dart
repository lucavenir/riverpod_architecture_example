import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sun_times.freezed.dart';

@freezed
class SunTimes with _$SunTimes {
  const factory SunTimes({
    required DateTime timestamp,
    required TimeOfDay sunrise,
    required TimeOfDay sunset,
  }) = _SunTimes;
}
