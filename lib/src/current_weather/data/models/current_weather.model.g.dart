// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentWeatherModelImpl _$$CurrentWeatherModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CurrentWeatherModelImpl',
      json,
      ($checkedConvert) {
        final val = _$CurrentWeatherModelImpl(
          current: $checkedConvert('current',
              (v) => CurrentModel.fromJson(v as Map<String, dynamic>)),
          location: $checkedConvert(
              'location',
              (v) => v == null
                  ? null
                  : CurrentWeatherLocationModel.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CurrentWeatherModelImplToJson(
        _$CurrentWeatherModelImpl instance) =>
    <String, dynamic>{
      'current': instance.current.toJson(),
      'location': instance.location?.toJson(),
    };
