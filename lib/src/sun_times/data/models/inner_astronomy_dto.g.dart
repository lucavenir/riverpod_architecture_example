// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inner_astronomy_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InnerAstronomyDtoImpl _$$InnerAstronomyDtoImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$InnerAstronomyDtoImpl',
      json,
      ($checkedConvert) {
        final val = _$InnerAstronomyDtoImpl(
          astro: $checkedConvert(
              'astro', (v) => AstroDto.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$InnerAstronomyDtoImplToJson(
        _$InnerAstronomyDtoImpl instance) =>
    <String, dynamic>{
      'astro': instance.astro.toJson(),
    };
