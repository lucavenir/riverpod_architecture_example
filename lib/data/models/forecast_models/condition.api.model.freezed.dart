// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'condition.api.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConditionApiModel _$ConditionApiModelFromJson(Map<String, dynamic> json) {
  return _ConditionApiModel.fromJson(json);
}

/// @nodoc
mixin _$ConditionApiModel {
  String get text => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConditionApiModelCopyWith<ConditionApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConditionApiModelCopyWith<$Res> {
  factory $ConditionApiModelCopyWith(
          ConditionApiModel value, $Res Function(ConditionApiModel) then) =
      _$ConditionApiModelCopyWithImpl<$Res, ConditionApiModel>;
  @useResult
  $Res call({String text, String icon, int? code});
}

/// @nodoc
class _$ConditionApiModelCopyWithImpl<$Res, $Val extends ConditionApiModel>
    implements $ConditionApiModelCopyWith<$Res> {
  _$ConditionApiModelCopyWithImpl(this._value, this._then);

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
abstract class _$$ConditionApiModelImplCopyWith<$Res>
    implements $ConditionApiModelCopyWith<$Res> {
  factory _$$ConditionApiModelImplCopyWith(_$ConditionApiModelImpl value,
          $Res Function(_$ConditionApiModelImpl) then) =
      __$$ConditionApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String icon, int? code});
}

/// @nodoc
class __$$ConditionApiModelImplCopyWithImpl<$Res>
    extends _$ConditionApiModelCopyWithImpl<$Res, _$ConditionApiModelImpl>
    implements _$$ConditionApiModelImplCopyWith<$Res> {
  __$$ConditionApiModelImplCopyWithImpl(_$ConditionApiModelImpl _value,
      $Res Function(_$ConditionApiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? icon = null,
    Object? code = freezed,
  }) {
    return _then(_$ConditionApiModelImpl(
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
class _$ConditionApiModelImpl implements _ConditionApiModel {
  const _$ConditionApiModelImpl(
      {required this.text, required this.icon, this.code});

  factory _$ConditionApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConditionApiModelImplFromJson(json);

  @override
  final String text;
  @override
  final String icon;
  @override
  final int? code;

  @override
  String toString() {
    return 'ConditionApiModel(text: $text, icon: $icon, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConditionApiModelImpl &&
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
  _$$ConditionApiModelImplCopyWith<_$ConditionApiModelImpl> get copyWith =>
      __$$ConditionApiModelImplCopyWithImpl<_$ConditionApiModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConditionApiModelImplToJson(
      this,
    );
  }
}

abstract class _ConditionApiModel implements ConditionApiModel {
  const factory _ConditionApiModel(
      {required final String text,
      required final String icon,
      final int? code}) = _$ConditionApiModelImpl;

  factory _ConditionApiModel.fromJson(Map<String, dynamic> json) =
      _$ConditionApiModelImpl.fromJson;

  @override
  String get text;
  @override
  String get icon;
  @override
  int? get code;
  @override
  @JsonKey(ignore: true)
  _$$ConditionApiModelImplCopyWith<_$ConditionApiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
