// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hour.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HourModelImpl _$$HourModelImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$HourModelImpl',
      json,
      ($checkedConvert) {
        final val = _$HourModelImpl(
          $checkedConvert('time_epoch', (v) => v as int?),
          $checkedConvert('time', (v) => v as String?),
          $checkedConvert('temp_c', (v) => (v as num?)?.toDouble()),
          $checkedConvert('temp_f', (v) => (v as num?)?.toDouble()),
          $checkedConvert('is_day', (v) => v as int?),
          $checkedConvert(
              'condition',
              (v) => v == null
                  ? null
                  : ConditionModel.fromJson(v as Map<String, dynamic>)),
          $checkedConvert('wind_mph', (v) => (v as num?)?.toDouble()),
          $checkedConvert('wind_kph', (v) => (v as num?)?.toDouble()),
          $checkedConvert('wind_degree', (v) => (v as num?)?.toDouble()),
          $checkedConvert('wind_dir', (v) => v as String?),
          $checkedConvert('pressure_mb', (v) => (v as num?)?.toDouble()),
          $checkedConvert('pressure_in', (v) => (v as num?)?.toDouble()),
          $checkedConvert('precip_mm', (v) => (v as num?)?.toDouble()),
          $checkedConvert('precip_in', (v) => (v as num?)?.toDouble()),
          $checkedConvert('humidity', (v) => (v as num?)?.toDouble()),
          $checkedConvert('cloud', (v) => (v as num?)?.toDouble()),
          $checkedConvert('feelslike_c', (v) => (v as num?)?.toDouble()),
          $checkedConvert('feelslike_f', (v) => (v as num?)?.toDouble()),
          $checkedConvert('windchill_c', (v) => (v as num?)?.toDouble()),
          $checkedConvert('windchill_f', (v) => (v as num?)?.toDouble()),
          $checkedConvert('heatindex_c', (v) => (v as num?)?.toDouble()),
          $checkedConvert('heatindex_f', (v) => (v as num?)?.toDouble()),
          $checkedConvert('dewpoint_c', (v) => (v as num?)?.toDouble()),
          $checkedConvert('dewpoint_f', (v) => (v as num?)?.toDouble()),
          $checkedConvert('will_it_rain', (v) => (v as num?)?.toDouble()),
          $checkedConvert('chance_of_rain', (v) => (v as num?)?.toDouble()),
          $checkedConvert('will_it_snow', (v) => (v as num?)?.toDouble()),
          $checkedConvert('chance_of_snow', (v) => (v as num?)?.toDouble()),
          $checkedConvert('vis_km', (v) => (v as num?)?.toDouble()),
          $checkedConvert('vis_miles', (v) => (v as num?)?.toDouble()),
          $checkedConvert('gust_mph', (v) => (v as num?)?.toDouble()),
          $checkedConvert('gust_kph', (v) => (v as num?)?.toDouble()),
          $checkedConvert('uv', (v) => (v as num?)?.toDouble()),
        );
        return val;
      },
      fieldKeyMap: const {
        'timeEpoch': 'time_epoch',
        'tempC': 'temp_c',
        'tempF': 'temp_f',
        'isDay': 'is_day',
        'windMph': 'wind_mph',
        'windKph': 'wind_kph',
        'windDegree': 'wind_degree',
        'windDir': 'wind_dir',
        'pressureMb': 'pressure_mb',
        'pressureIn': 'pressure_in',
        'precipMm': 'precip_mm',
        'precipIn': 'precip_in',
        'feelslikeC': 'feelslike_c',
        'feelslikeF': 'feelslike_f',
        'windchillC': 'windchill_c',
        'windchillF': 'windchill_f',
        'heatindexC': 'heatindex_c',
        'heatindexF': 'heatindex_f',
        'dewpointC': 'dewpoint_c',
        'dewpointF': 'dewpoint_f',
        'willItRain': 'will_it_rain',
        'chanceOfRain': 'chance_of_rain',
        'willItSnow': 'will_it_snow',
        'chanceOfSnow': 'chance_of_snow',
        'visKm': 'vis_km',
        'visMiles': 'vis_miles',
        'gustMph': 'gust_mph',
        'gustKph': 'gust_kph'
      },
    );

Map<String, dynamic> _$$HourModelImplToJson(_$HourModelImpl instance) =>
    <String, dynamic>{
      'time_epoch': instance.timeEpoch,
      'time': instance.time,
      'temp_c': instance.tempC,
      'temp_f': instance.tempF,
      'is_day': instance.isDay,
      'condition': instance.condition?.toJson(),
      'wind_mph': instance.windMph,
      'wind_kph': instance.windKph,
      'wind_degree': instance.windDegree,
      'wind_dir': instance.windDir,
      'pressure_mb': instance.pressureMb,
      'pressure_in': instance.pressureIn,
      'precip_mm': instance.precipMm,
      'precip_in': instance.precipIn,
      'humidity': instance.humidity,
      'cloud': instance.cloud,
      'feelslike_c': instance.feelslikeC,
      'feelslike_f': instance.feelslikeF,
      'windchill_c': instance.windchillC,
      'windchill_f': instance.windchillF,
      'heatindex_c': instance.heatindexC,
      'heatindex_f': instance.heatindexF,
      'dewpoint_c': instance.dewpointC,
      'dewpoint_f': instance.dewpointF,
      'will_it_rain': instance.willItRain,
      'chance_of_rain': instance.chanceOfRain,
      'will_it_snow': instance.willItSnow,
      'chance_of_snow': instance.chanceOfSnow,
      'vis_km': instance.visKm,
      'vis_miles': instance.visMiles,
      'gust_mph': instance.gustMph,
      'gust_kph': instance.gustKph,
      'uv': instance.uv,
    };
