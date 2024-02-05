// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentForecastModelImpl _$$CurrentForecastModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CurrentForecastModelImpl',
      json,
      ($checkedConvert) {
        final val = _$CurrentForecastModelImpl(
          condition: $checkedConvert('condition',
              (v) => ConditionModel.fromJson(v as Map<String, dynamic>)),
          lastUpdated: $checkedConvert(
              'last_updated', (v) => DateTime.parse(v as String)),
          lastUpdatedEpoch:
              $checkedConvert('last_updated_epoch', (v) => v as int?),
          tempC: $checkedConvert('temp_c', (v) => (v as num?)?.toDouble()),
          tempF: $checkedConvert('temp_f', (v) => (v as num?)?.toDouble()),
          isDay: $checkedConvert('is_day', (v) => v as int?),
          windMph: $checkedConvert('wind_mph', (v) => (v as num?)?.toDouble()),
          windKph: $checkedConvert('wind_kph', (v) => (v as num?)?.toDouble()),
          windDegree:
              $checkedConvert('wind_degree', (v) => (v as num?)?.toDouble()),
          windDir: $checkedConvert('wind_dir', (v) => v as String?),
          pressureMb:
              $checkedConvert('pressure_mb', (v) => (v as num?)?.toDouble()),
          pressureIn:
              $checkedConvert('pressure_in', (v) => (v as num?)?.toDouble()),
          precipMm:
              $checkedConvert('precip_mm', (v) => (v as num?)?.toDouble()),
          precipIn:
              $checkedConvert('precip_in', (v) => (v as num?)?.toDouble()),
          humidity: $checkedConvert('humidity', (v) => (v as num?)?.toDouble()),
          cloud: $checkedConvert('cloud', (v) => (v as num?)?.toDouble()),
          feelslikeC:
              $checkedConvert('feelslike_c', (v) => (v as num?)?.toDouble()),
          feelslikeF:
              $checkedConvert('feelslike_f', (v) => (v as num?)?.toDouble()),
          visKm: $checkedConvert('vis_km', (v) => (v as num?)?.toDouble()),
          visMiles:
              $checkedConvert('vis_miles', (v) => (v as num?)?.toDouble()),
          uv: $checkedConvert('uv', (v) => (v as num?)?.toDouble()),
          gustMph: $checkedConvert('gust_mph', (v) => (v as num?)?.toDouble()),
          gustKph: $checkedConvert('gust_kph', (v) => (v as num?)?.toDouble()),
        );
        return val;
      },
      fieldKeyMap: const {
        'lastUpdated': 'last_updated',
        'lastUpdatedEpoch': 'last_updated_epoch',
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
        'visKm': 'vis_km',
        'visMiles': 'vis_miles',
        'gustMph': 'gust_mph',
        'gustKph': 'gust_kph'
      },
    );

Map<String, dynamic> _$$CurrentForecastModelImplToJson(
        _$CurrentForecastModelImpl instance) =>
    <String, dynamic>{
      'condition': instance.condition.toJson(),
      'last_updated': instance.lastUpdated.toIso8601String(),
      'last_updated_epoch': instance.lastUpdatedEpoch,
      'temp_c': instance.tempC,
      'temp_f': instance.tempF,
      'is_day': instance.isDay,
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
      'vis_km': instance.visKm,
      'vis_miles': instance.visMiles,
      'uv': instance.uv,
      'gust_mph': instance.gustMph,
      'gust_kph': instance.gustKph,
    };
