import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../base/json.dart';

part 'condition_dto.freezed.dart';
part 'condition_dto.g.dart';

@freezed
class ConditionDto with _$ConditionDto {
  const factory ConditionDto({
    required String text,
    required String icon,
    int? code,
  }) = _ConditionDto;
  factory ConditionDto.fromJson(Json json) => _$ConditionDtoFromJson(json);
}
