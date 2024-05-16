import 'package:freezed_annotation/freezed_annotation.dart';

import '../../json.dart';

part 'condition.api.model.freezed.dart';
part 'condition.api.model.g.dart';

@freezed
class ConditionApiModel with _$ConditionApiModel {
  const factory ConditionApiModel({
    required String text,
    required String icon,
    int? code,
  }) = _ConditionApiModel;
  factory ConditionApiModel.fromJson(Json json) => _$ConditionApiModelFromJson(json);
}
