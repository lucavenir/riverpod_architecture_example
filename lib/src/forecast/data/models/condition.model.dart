import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../shared/data/json.dart';

part 'condition.model.freezed.dart';
part 'condition.model.g.dart';

@freezed
class ConditionModel with _$ConditionModel {
  const factory ConditionModel({
    required String text,
    required String icon,
    int? code,
  }) = _ConditionModel;

  factory ConditionModel.fromJson(Json json) => _$ConditionModelFromJson(json);
}
