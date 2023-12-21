// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'condition_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConditionDtoImpl _$$ConditionDtoImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ConditionDtoImpl',
      json,
      ($checkedConvert) {
        final val = _$ConditionDtoImpl(
          text: $checkedConvert('text', (v) => v as String),
          icon: $checkedConvert('icon', (v) => v as String),
          code: $checkedConvert('code', (v) => v as int?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$ConditionDtoImplToJson(_$ConditionDtoImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'icon': instance.icon,
      'code': instance.code,
    };
