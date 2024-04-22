// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_day.api.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForecastDayApiModelImpl _$$ForecastDayApiModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ForecastDayApiModelImpl',
      json,
      ($checkedConvert) {
        final val = _$ForecastDayApiModelImpl(
          date: $checkedConvert('date', (v) => DateTime.parse(v as String)),
          day: $checkedConvert(
              'day', (v) => DayApiModel.fromJson(v as Map<String, dynamic>)),
          dateEpoch: $checkedConvert('date_epoch', (v) => v as int?),
          astro: $checkedConvert(
              'astro',
              (v) => v == null
                  ? null
                  : AstroApiModel.fromJson(v as Map<String, dynamic>)),
          hour: $checkedConvert(
              'hour',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => HourApiModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {'dateEpoch': 'date_epoch'},
    );

Map<String, dynamic> _$$ForecastDayApiModelImplToJson(
        _$ForecastDayApiModelImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'day': instance.day.toJson(),
      'date_epoch': instance.dateEpoch,
      'astro': instance.astro?.toJson(),
      'hour': instance.hour?.map((e) => e.toJson()).toList(),
    };
