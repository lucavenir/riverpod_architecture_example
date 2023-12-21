// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'astro_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AstroDtoImpl _$$AstroDtoImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$AstroDtoImpl',
      json,
      ($checkedConvert) {
        final val = _$AstroDtoImpl(
          sunrise: $checkedConvert('sunrise', (v) => v as String),
          sunset: $checkedConvert('sunset', (v) => v as String),
          moonrise: $checkedConvert('moonrise', (v) => v as String?),
          moonset: $checkedConvert('moonset', (v) => v as String?),
          moonPhase: $checkedConvert('moon_phase', (v) => v as String?),
          moonIllumination:
              $checkedConvert('moon_illumination', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'moonPhase': 'moon_phase',
        'moonIllumination': 'moon_illumination'
      },
    );

Map<String, dynamic> _$$AstroDtoImplToJson(_$AstroDtoImpl instance) =>
    <String, dynamic>{
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'moonrise': instance.moonrise,
      'moonset': instance.moonset,
      'moon_phase': instance.moonPhase,
      'moon_illumination': instance.moonIllumination,
    };
