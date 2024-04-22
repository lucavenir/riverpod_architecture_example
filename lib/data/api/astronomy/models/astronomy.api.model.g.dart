// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'astronomy.api.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AstronomyApiModelImpl _$$AstronomyApiModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$AstronomyApiModelImpl',
      json,
      ($checkedConvert) {
        final val = _$AstronomyApiModelImpl(
          astronomy: $checkedConvert(
              'astronomy',
              (v) =>
                  InnerAstronomyApiModel.fromJson(v as Map<String, dynamic>)),
          location: $checkedConvert(
              'location',
              (v) => v == null
                  ? null
                  : LocationApiModel.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$AstronomyApiModelImplToJson(
        _$AstronomyApiModelImpl instance) =>
    <String, dynamic>{
      'astronomy': instance.astronomy.toJson(),
      'location': instance.location?.toJson(),
    };
