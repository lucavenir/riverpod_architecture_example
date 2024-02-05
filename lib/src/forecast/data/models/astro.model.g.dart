// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'astro.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AstroModelImpl _$$AstroModelImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$AstroModelImpl',
      json,
      ($checkedConvert) {
        final val = _$AstroModelImpl(
          $checkedConvert('sunrise', (v) => v as String?),
          $checkedConvert('sunset', (v) => v as String?),
          $checkedConvert('moonrise', (v) => v as String?),
          $checkedConvert('moonset', (v) => v as String?),
          $checkedConvert('moon_phase', (v) => v as String?),
          $checkedConvert('moon_illumination', (v) => v as int?),
          $checkedConvert('is_moon_up', (v) => v as int?),
          $checkedConvert('is_sun_up', (v) => v as int?),
        );
        return val;
      },
      fieldKeyMap: const {
        'moonPhase': 'moon_phase',
        'moonIllumination': 'moon_illumination',
        'isMoonUp': 'is_moon_up',
        'isSunUp': 'is_sun_up'
      },
    );

Map<String, dynamic> _$$AstroModelImplToJson(_$AstroModelImpl instance) =>
    <String, dynamic>{
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'moonrise': instance.moonrise,
      'moonset': instance.moonset,
      'moon_phase': instance.moonPhase,
      'moon_illumination': instance.moonIllumination,
      'is_moon_up': instance.isMoonUp,
      'is_sun_up': instance.isSunUp,
    };
