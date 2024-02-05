// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentWeatherDtoImpl _$$CurrentWeatherDtoImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CurrentWeatherDtoImpl',
      json,
      ($checkedConvert) {
        final val = _$CurrentWeatherDtoImpl(
          current: $checkedConvert(
              'current', (v) => CurrentDto.fromJson(v as Map<String, dynamic>)),
          location: $checkedConvert(
              'location',
              (v) => v == null
                  ? null
                  : CurrentWeatherLocationDto.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CurrentWeatherDtoImplToJson(
        _$CurrentWeatherDtoImpl instance) =>
    <String, dynamic>{
      'current': instance.current.toJson(),
      'location': instance.location?.toJson(),
    };
