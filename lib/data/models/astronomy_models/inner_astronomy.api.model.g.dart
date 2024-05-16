// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inner_astronomy.api.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InnerAstronomyApiModelImpl _$$InnerAstronomyApiModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$InnerAstronomyApiModelImpl',
      json,
      ($checkedConvert) {
        final val = _$InnerAstronomyApiModelImpl(
          astro: $checkedConvert('astro',
              (v) => AstroApiModel.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$InnerAstronomyApiModelImplToJson(
        _$InnerAstronomyApiModelImpl instance) =>
    <String, dynamic>{
      'astro': instance.astro.toJson(),
    };
