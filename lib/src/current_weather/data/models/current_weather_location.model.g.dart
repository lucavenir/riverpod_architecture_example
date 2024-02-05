// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather_location.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentWeatherLocationModelImpl _$$CurrentWeatherLocationModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CurrentWeatherLocationModelImpl',
      json,
      ($checkedConvert) {
        final val = _$CurrentWeatherLocationModelImpl(
          name: $checkedConvert('name', (v) => v as String),
          region: $checkedConvert('region', (v) => v as String?),
          country: $checkedConvert('country', (v) => v as String?),
          lat: $checkedConvert('lat', (v) => (v as num?)?.toDouble()),
          lon: $checkedConvert('lon', (v) => (v as num?)?.toDouble()),
          tzId: $checkedConvert('tz_id', (v) => v as String?),
          localtimeepoch: $checkedConvert('localtimeepoch', (v) => v as int?),
          localtime: $checkedConvert('localtime', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'tzId': 'tz_id'},
    );

Map<String, dynamic> _$$CurrentWeatherLocationModelImplToJson(
        _$CurrentWeatherLocationModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'region': instance.region,
      'country': instance.country,
      'lat': instance.lat,
      'lon': instance.lon,
      'tz_id': instance.tzId,
      'localtimeepoch': instance.localtimeepoch,
      'localtime': instance.localtime,
    };
