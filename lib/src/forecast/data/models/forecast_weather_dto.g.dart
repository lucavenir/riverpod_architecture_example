// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_weather_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForecastWeatherDtoImpl _$$ForecastWeatherDtoImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ForecastWeatherDtoImpl',
      json,
      ($checkedConvert) {
        final val = _$ForecastWeatherDtoImpl(
          current: $checkedConvert(
              'current', (v) => CurrentDto.fromJson(v as Map<String, dynamic>)),
          forecast: $checkedConvert('forecast',
              (v) => ForecastDto.fromJson(v as Map<String, dynamic>)),
          location: $checkedConvert(
              'location',
              (v) => v == null
                  ? null
                  : ForecastLocationDto.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$ForecastWeatherDtoImplToJson(
        _$ForecastWeatherDtoImpl instance) =>
    <String, dynamic>{
      'current': instance.current.toJson(),
      'forecast': instance.forecast.toJson(),
      'location': instance.location?.toJson(),
    };
