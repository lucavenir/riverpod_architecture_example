// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'astronomy.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AstronomyModelImpl _$$AstronomyModelImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$AstronomyModelImpl',
      json,
      ($checkedConvert) {
        final val = _$AstronomyModelImpl(
          astronomy: $checkedConvert('astronomy',
              (v) => InnerAstronomyModel.fromJson(v as Map<String, dynamic>)),
          location: $checkedConvert(
              'location',
              (v) => v == null
                  ? null
                  : LocationModel.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$AstronomyModelImplToJson(
        _$AstronomyModelImpl instance) =>
    <String, dynamic>{
      'astronomy': instance.astronomy.toJson(),
      'location': instance.location?.toJson(),
    };
