// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_day_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForecastDayDtoImpl _$$ForecastDayDtoImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ForecastDayDtoImpl',
      json,
      ($checkedConvert) {
        final val = _$ForecastDayDtoImpl(
          date: $checkedConvert('date', (v) => DateTime.parse(v as String)),
          day: $checkedConvert(
              'day', (v) => DayDto.fromJson(v as Map<String, dynamic>)),
          dateEpoch: $checkedConvert('date_epoch', (v) => v as int?),
          astro: $checkedConvert(
              'astro',
              (v) => v == null
                  ? null
                  : AstroDto.fromJson(v as Map<String, dynamic>)),
          hour: $checkedConvert(
              'hour',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => HourDto.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {'dateEpoch': 'date_epoch'},
    );

Map<String, dynamic> _$$ForecastDayDtoImplToJson(
        _$ForecastDayDtoImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'day': instance.day.toJson(),
      'date_epoch': instance.dateEpoch,
      'astro': instance.astro?.toJson(),
      'hour': instance.hour?.map((e) => e.toJson()).toList(),
    };
