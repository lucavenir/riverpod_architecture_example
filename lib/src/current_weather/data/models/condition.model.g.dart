// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'condition.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConditionModelImpl _$$ConditionModelImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ConditionModelImpl',
      json,
      ($checkedConvert) {
        final val = _$ConditionModelImpl(
          text: $checkedConvert('text', (v) => v as String),
          icon: $checkedConvert('icon', (v) => v as String),
          code: $checkedConvert('code', (v) => v as int?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$ConditionModelImplToJson(
        _$ConditionModelImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'icon': instance.icon,
      'code': instance.code,
    };
