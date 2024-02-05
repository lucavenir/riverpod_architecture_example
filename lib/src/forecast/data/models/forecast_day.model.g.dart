// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_day.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForecastDayModelImpl _$$ForecastDayModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ForecastDayModelImpl',
      json,
      ($checkedConvert) {
        final val = _$ForecastDayModelImpl(
          date: $checkedConvert('date', (v) => DateTime.parse(v as String)),
          day: $checkedConvert(
              'day', (v) => DayModel.fromJson(v as Map<String, dynamic>)),
          dateEpoch: $checkedConvert('date_epoch', (v) => v as int?),
          astro: $checkedConvert(
              'astro',
              (v) => v == null
                  ? null
                  : AstroModel.fromJson(v as Map<String, dynamic>)),
          hour: $checkedConvert(
              'hour',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => HourModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {'dateEpoch': 'date_epoch'},
    );

Map<String, dynamic> _$$ForecastDayModelImplToJson(
        _$ForecastDayModelImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'day': instance.day.toJson(),
      'date_epoch': instance.dateEpoch,
      'astro': instance.astro?.toJson(),
      'hour': instance.hour?.map((e) => e.toJson()).toList(),
    };
