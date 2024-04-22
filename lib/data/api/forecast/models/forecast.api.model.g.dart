// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast.api.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForecastApiModelImpl _$$ForecastApiModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ForecastApiModelImpl',
      json,
      ($checkedConvert) {
        final val = _$ForecastApiModelImpl(
          forecastday: $checkedConvert(
              'forecastday',
              (v) =>
                  (v as List<dynamic>?)?.map((e) =>
                      ForecastDayModel.fromJson(e as Map<String, dynamic>)) ??
                  const []),
        );
        return val;
      },
    );

Map<String, dynamic> _$$ForecastApiModelImplToJson(
        _$ForecastApiModelImpl instance) =>
    <String, dynamic>{
      'forecastday': instance.forecastday.map((e) => e.toJson()).toList(),
    };
