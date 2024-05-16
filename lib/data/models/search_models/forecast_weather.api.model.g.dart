// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_weather.api.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForecastWeatherApiModelImpl _$$ForecastWeatherApiModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ForecastWeatherApiModelImpl',
      json,
      ($checkedConvert) {
        final val = _$ForecastWeatherApiModelImpl(
          current: $checkedConvert(
              'current',
              (v) =>
                  CurrentForecastApiModel.fromJson(v as Map<String, dynamic>)),
          forecast: $checkedConvert('forecast',
              (v) => ForecastApiModel.fromJson(v as Map<String, dynamic>)),
          location: $checkedConvert(
              'location',
              (v) => v == null
                  ? null
                  : ForecastLocationApiModel.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$ForecastWeatherApiModelImplToJson(
        _$ForecastWeatherApiModelImpl instance) =>
    <String, dynamic>{
      'current': instance.current.toJson(),
      'forecast': instance.forecast.toJson(),
      'location': instance.location?.toJson(),
    };
