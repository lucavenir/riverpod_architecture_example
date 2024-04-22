// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.api.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationApiModelImpl _$$LocationApiModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$LocationApiModelImpl',
      json,
      ($checkedConvert) {
        final val = _$LocationApiModelImpl(
          localTime: $checkedConvert('localtime', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String?),
          country: $checkedConvert('country', (v) => v as String?),
          id: $checkedConvert('id', (v) => v as int?),
          region: $checkedConvert('region', (v) => v as String?),
          lat: $checkedConvert('lat', (v) => (v as num?)?.toDouble()),
          lon: $checkedConvert('lon', (v) => (v as num?)?.toDouble()),
          url: $checkedConvert('url', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'localTime': 'localtime'},
    );

Map<String, dynamic> _$$LocationApiModelImplToJson(
        _$LocationApiModelImpl instance) =>
    <String, dynamic>{
      'localtime': instance.localTime,
      'name': instance.name,
      'country': instance.country,
      'id': instance.id,
      'region': instance.region,
      'lat': instance.lat,
      'lon': instance.lon,
      'url': instance.url,
    };
