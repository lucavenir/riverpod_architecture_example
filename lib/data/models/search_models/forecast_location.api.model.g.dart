// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_location.api.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForecastLocationApiModelImpl _$$ForecastLocationApiModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ForecastLocationApiModelImpl',
      json,
      ($checkedConvert) {
        final val = _$ForecastLocationApiModelImpl(
          $checkedConvert('name', (v) => v as String?),
          $checkedConvert('region', (v) => v as String?),
          $checkedConvert('country', (v) => v as String?),
          $checkedConvert('lat', (v) => (v as num?)?.toDouble()),
          $checkedConvert('lon', (v) => (v as num?)?.toDouble()),
          $checkedConvert('tz_id', (v) => v as String?),
          $checkedConvert('localtime_epoch', (v) => v as int?),
          $checkedConvert('localtime', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'tzId': 'tz_id', 'localtimeEpoch': 'localtime_epoch'},
    );

Map<String, dynamic> _$$ForecastLocationApiModelImplToJson(
        _$ForecastLocationApiModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'region': instance.region,
      'country': instance.country,
      'lat': instance.lat,
      'lon': instance.lon,
      'tz_id': instance.tzId,
      'localtime_epoch': instance.localtimeEpoch,
      'localtime': instance.localtime,
    };
