// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_location.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForecastLocationModelImpl _$$ForecastLocationModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ForecastLocationModelImpl',
      json,
      ($checkedConvert) {
        final val = _$ForecastLocationModelImpl(
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

Map<String, dynamic> _$$ForecastLocationModelImplToJson(
        _$ForecastLocationModelImpl instance) =>
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
