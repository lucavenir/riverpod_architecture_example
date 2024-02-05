// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForecastDtoImpl _$$ForecastDtoImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ForecastDtoImpl',
      json,
      ($checkedConvert) {
        final val = _$ForecastDtoImpl(
          forecastday: $checkedConvert(
              'forecastday',
              (v) =>
                  (v as List<dynamic>?)?.map((e) =>
                      ForecastDayDto.fromJson(e as Map<String, dynamic>)) ??
                  const []),
        );
        return val;
      },
    );

Map<String, dynamic> _$$ForecastDtoImplToJson(_$ForecastDtoImpl instance) =>
    <String, dynamic>{
      'forecastday': instance.forecastday.map((e) => e.toJson()).toList(),
    };
