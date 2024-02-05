// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'condition.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConditionModel _$ConditionModelFromJson(Map<String, dynamic> json) {
  return _ConditionModel.fromJson(json);
}

/// @nodoc
mixin _$ConditionModel {
  String get text => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConditionModelCopyWith<ConditionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConditionModelCopyWith<$Res> {
  factory $ConditionModelCopyWith(
          ConditionModel value, $Res Function(ConditionModel) then) =
      _$ConditionModelCopyWithImpl<$Res, ConditionModel>;
  @useResult
  $Res call({String text, String icon, int? code});
}

/// @nodoc
class _$ConditionModelCopyWithImpl<$Res, $Val extends ConditionModel>
    implements $ConditionModelCopyWith<$Res> {
  _$ConditionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? icon = null,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConditionModelImplCopyWith<$Res>
    implements $ConditionModelCopyWith<$Res> {
  factory _$$ConditionModelImplCopyWith(_$ConditionModelImpl value,
          $Res Function(_$ConditionModelImpl) then) =
      __$$ConditionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String icon, int? code});
}

/// @nodoc
class __$$ConditionModelImplCopyWithImpl<$Res>
    extends _$ConditionModelCopyWithImpl<$Res, _$ConditionModelImpl>
    implements _$$ConditionModelImplCopyWith<$Res> {
  __$$ConditionModelImplCopyWithImpl(
      _$ConditionModelImpl _value, $Res Function(_$ConditionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? icon = null,
    Object? code = freezed,
  }) {
    return _then(_$ConditionModelImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConditionModelImpl implements _ConditionModel {
  const _$ConditionModelImpl(
      {required this.text, required this.icon, this.code});

  factory _$ConditionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConditionModelImplFromJson(json);

  @override
  final String text;
  @override
  final String icon;
  @override
  final int? code;

  @override
  String toString() {
    return 'ConditionModel(text: $text, icon: $icon, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConditionModelImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, icon, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConditionModelImplCopyWith<_$ConditionModelImpl> get copyWith =>
      __$$ConditionModelImplCopyWithImpl<_$ConditionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConditionModelImplToJson(
      this,
    );
  }
}

abstract class _ConditionModel implements ConditionModel {
  const factory _ConditionModel(
      {required final String text,
      required final String icon,
      final int? code}) = _$ConditionModelImpl;

  factory _ConditionModel.fromJson(Map<String, dynamic> json) =
      _$ConditionModelImpl.fromJson;

  @override
  String get text;
  @override
  String get icon;
  @override
  int? get code;
  @override
  @JsonKey(ignore: true)
  _$$ConditionModelImplCopyWith<_$ConditionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
