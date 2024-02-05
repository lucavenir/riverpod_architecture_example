// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inner_astronomy.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InnerAstronomyModelImpl _$$InnerAstronomyModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$InnerAstronomyModelImpl',
      json,
      ($checkedConvert) {
        final val = _$InnerAstronomyModelImpl(
          astro: $checkedConvert(
              'astro', (v) => AstroModel.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$InnerAstronomyModelImplToJson(
        _$InnerAstronomyModelImpl instance) =>
    <String, dynamic>{
      'astro': instance.astro.toJson(),
    };
