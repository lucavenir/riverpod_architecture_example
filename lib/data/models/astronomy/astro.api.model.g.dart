// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'astro.api.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AstroApiModelImpl _$$AstroApiModelImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$AstroApiModelImpl',
      json,
      ($checkedConvert) {
        final val = _$AstroApiModelImpl(
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

Map<String, dynamic> _$$AstroApiModelImplToJson(_$AstroApiModelImpl instance) =>
    <String, dynamic>{
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'moonrise': instance.moonrise,
      'moonset': instance.moonset,
      'moon_phase': instance.moonPhase,
      'moon_illumination': instance.moonIllumination,
    };
