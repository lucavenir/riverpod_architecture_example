// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather.api.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentWeatherApiModelImpl _$$CurrentWeatherApiModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CurrentWeatherApiModelImpl',
      json,
      ($checkedConvert) {
        final val = _$CurrentWeatherApiModelImpl(
          current: $checkedConvert('current',
              (v) => CurrentApiModel.fromJson(v as Map<String, dynamic>)),
          location: $checkedConvert(
              'location',
              (v) => v == null
                  ? null
                  : CurrentWeatherLocationApiModel.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CurrentWeatherApiModelImplToJson(
        _$CurrentWeatherApiModelImpl instance) =>
    <String, dynamic>{
      'current': instance.current.toJson(),
      'location': instance.location?.toJson(),
    };
