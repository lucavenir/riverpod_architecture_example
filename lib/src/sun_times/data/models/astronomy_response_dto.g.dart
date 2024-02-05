// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'astronomy_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AstronomyDtoImpl _$$AstronomyDtoImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$AstronomyDtoImpl',
      json,
      ($checkedConvert) {
        final val = _$AstronomyDtoImpl(
          astronomy: $checkedConvert('astronomy',
              (v) => InnerAstronomyDto.fromJson(v as Map<String, dynamic>)),
          location: $checkedConvert(
              'location',
              (v) => v == null
                  ? null
                  : LocationDto.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$AstronomyDtoImplToJson(_$AstronomyDtoImpl instance) =>
    <String, dynamic>{
      'astronomy': instance.astronomy.toJson(),
      'location': instance.location?.toJson(),
    };
