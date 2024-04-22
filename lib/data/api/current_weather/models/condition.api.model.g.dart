// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'condition.api.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConditionApiModelImpl _$$ConditionApiModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ConditionApiModelImpl',
      json,
      ($checkedConvert) {
        final val = _$ConditionApiModelImpl(
          text: $checkedConvert('text', (v) => v as String),
          icon: $checkedConvert('icon', (v) => v as String),
          code: $checkedConvert('code', (v) => v as int?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$ConditionApiModelImplToJson(
        _$ConditionApiModelImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'icon': instance.icon,
      'code': instance.code,
    };
