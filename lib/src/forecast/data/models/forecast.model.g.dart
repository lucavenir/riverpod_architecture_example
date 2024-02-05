// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForecastModelImpl _$$ForecastModelImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ForecastModelImpl',
      json,
      ($checkedConvert) {
        final val = _$ForecastModelImpl(
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

Map<String, dynamic> _$$ForecastModelImplToJson(_$ForecastModelImpl instance) =>
    <String, dynamic>{
      'forecastday': instance.forecastday.map((e) => e.toJson()).toList(),
    };
