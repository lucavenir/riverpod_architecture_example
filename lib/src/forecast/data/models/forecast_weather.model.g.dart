// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_weather.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForecastWeatherModelImpl _$$ForecastWeatherModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ForecastWeatherModelImpl',
      json,
      ($checkedConvert) {
        final val = _$ForecastWeatherModelImpl(
          current: $checkedConvert('current',
              (v) => CurrentForecastModel.fromJson(v as Map<String, dynamic>)),
          forecast: $checkedConvert('forecast',
              (v) => ForecastModel.fromJson(v as Map<String, dynamic>)),
          location: $checkedConvert(
              'location',
              (v) => v == null
                  ? null
                  : ForecastLocationModel.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$ForecastWeatherModelImplToJson(
        _$ForecastWeatherModelImpl instance) =>
    <String, dynamic>{
      'current': instance.current.toJson(),
      'forecast': instance.forecast.toJson(),
      'location': instance.location?.toJson(),
    };
