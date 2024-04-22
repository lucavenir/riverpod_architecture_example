// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day.api.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DayApiModelImpl _$$DayApiModelImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$DayApiModelImpl',
      json,
      ($checkedConvert) {
        final val = _$DayApiModelImpl(
          condition: $checkedConvert('condition',
              (v) => ConditionApiModel.fromJson(v as Map<String, dynamic>)),
          avgtempC: $checkedConvert('avgtemp_c', (v) => (v as num).toDouble()),
          maxtempC:
              $checkedConvert('maxtemp_c', (v) => (v as num?)?.toDouble()),
          maxtempF:
              $checkedConvert('maxtemp_f', (v) => (v as num?)?.toDouble()),
          mintempC:
              $checkedConvert('mintemp_c', (v) => (v as num?)?.toDouble()),
          mintempF:
              $checkedConvert('mintemp_f', (v) => (v as num?)?.toDouble()),
          avgtempF:
              $checkedConvert('avgtemp_f', (v) => (v as num?)?.toDouble()),
          maxwindMph:
              $checkedConvert('maxwind_mph', (v) => (v as num?)?.toDouble()),
          maxwindKph:
              $checkedConvert('maxwind_kph', (v) => (v as num?)?.toDouble()),
          totalprecipMm:
              $checkedConvert('totalprecip_mm', (v) => (v as num?)?.toDouble()),
          totalprecipIn:
              $checkedConvert('totalprecip_in', (v) => (v as num?)?.toDouble()),
          totalsnowCm:
              $checkedConvert('totalsnow_cm', (v) => (v as num?)?.toDouble()),
          avgvisKm:
              $checkedConvert('avgvis_km', (v) => (v as num?)?.toDouble()),
          avgvisMiles:
              $checkedConvert('avgvis_miles', (v) => (v as num?)?.toDouble()),
          avghumidity:
              $checkedConvert('avghumidity', (v) => (v as num?)?.toDouble()),
          dailyWillItRain: $checkedConvert(
              'daily_will_it_rain', (v) => (v as num?)?.toDouble()),
          dailyChanceOfRain: $checkedConvert(
              'daily_chance_of_rain', (v) => (v as num?)?.toDouble()),
          dailyWillItSnow: $checkedConvert(
              'daily_will_it_snow', (v) => (v as num?)?.toDouble()),
          dailyChanceOfSnow: $checkedConvert(
              'daily_chance_of_snow', (v) => (v as num?)?.toDouble()),
          uv: $checkedConvert('uv', (v) => (v as num?)?.toDouble()),
        );
        return val;
      },
      fieldKeyMap: const {
        'avgtempC': 'avgtemp_c',
        'maxtempC': 'maxtemp_c',
        'maxtempF': 'maxtemp_f',
        'mintempC': 'mintemp_c',
        'mintempF': 'mintemp_f',
        'avgtempF': 'avgtemp_f',
        'maxwindMph': 'maxwind_mph',
        'maxwindKph': 'maxwind_kph',
        'totalprecipMm': 'totalprecip_mm',
        'totalprecipIn': 'totalprecip_in',
        'totalsnowCm': 'totalsnow_cm',
        'avgvisKm': 'avgvis_km',
        'avgvisMiles': 'avgvis_miles',
        'dailyWillItRain': 'daily_will_it_rain',
        'dailyChanceOfRain': 'daily_chance_of_rain',
        'dailyWillItSnow': 'daily_will_it_snow',
        'dailyChanceOfSnow': 'daily_chance_of_snow'
      },
    );

Map<String, dynamic> _$$DayApiModelImplToJson(_$DayApiModelImpl instance) =>
    <String, dynamic>{
      'condition': instance.condition.toJson(),
      'avgtemp_c': instance.avgtempC,
      'maxtemp_c': instance.maxtempC,
      'maxtemp_f': instance.maxtempF,
      'mintemp_c': instance.mintempC,
      'mintemp_f': instance.mintempF,
      'avgtemp_f': instance.avgtempF,
      'maxwind_mph': instance.maxwindMph,
      'maxwind_kph': instance.maxwindKph,
      'totalprecip_mm': instance.totalprecipMm,
      'totalprecip_in': instance.totalprecipIn,
      'totalsnow_cm': instance.totalsnowCm,
      'avgvis_km': instance.avgvisKm,
      'avgvis_miles': instance.avgvisMiles,
      'avghumidity': instance.avghumidity,
      'daily_will_it_rain': instance.dailyWillItRain,
      'daily_chance_of_rain': instance.dailyChanceOfRain,
      'daily_will_it_snow': instance.dailyWillItSnow,
      'daily_chance_of_snow': instance.dailyChanceOfSnow,
      'uv': instance.uv,
    };
