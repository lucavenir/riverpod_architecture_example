// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast.api.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForecastApiModel _$ForecastApiModelFromJson(Map<String, dynamic> json) {
  return _ForecastApiModel.fromJson(json);
}

/// @nodoc
mixin _$ForecastApiModel {
  Iterable<ForecastDayModel> get forecastday =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastApiModelCopyWith<ForecastApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastApiModelCopyWith<$Res> {
  factory $ForecastApiModelCopyWith(
          ForecastApiModel value, $Res Function(ForecastApiModel) then) =
      _$ForecastApiModelCopyWithImpl<$Res, ForecastApiModel>;
  @useResult
  $Res call({Iterable<ForecastDayModel> forecastday});
}

/// @nodoc
class _$ForecastApiModelCopyWithImpl<$Res, $Val extends ForecastApiModel>
    implements $ForecastApiModelCopyWith<$Res> {
  _$ForecastApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecastday = null,
  }) {
    return _then(_value.copyWith(
      forecastday: null == forecastday
          ? _value.forecastday
          : forecastday // ignore: cast_nullable_to_non_nullable
              as Iterable<ForecastDayModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForecastApiModelImplCopyWith<$Res>
    implements $ForecastApiModelCopyWith<$Res> {
  factory _$$ForecastApiModelImplCopyWith(_$ForecastApiModelImpl value,
          $Res Function(_$ForecastApiModelImpl) then) =
      __$$ForecastApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Iterable<ForecastDayModel> forecastday});
}

/// @nodoc
class __$$ForecastApiModelImplCopyWithImpl<$Res>
    extends _$ForecastApiModelCopyWithImpl<$Res, _$ForecastApiModelImpl>
    implements _$$ForecastApiModelImplCopyWith<$Res> {
  __$$ForecastApiModelImplCopyWithImpl(_$ForecastApiModelImpl _value,
      $Res Function(_$ForecastApiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecastday = null,
  }) {
    return _then(_$ForecastApiModelImpl(
      forecastday: null == forecastday
          ? _value.forecastday
          : forecastday // ignore: cast_nullable_to_non_nullable
              as Iterable<ForecastDayModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastApiModelImpl implements _ForecastApiModel {
  const _$ForecastApiModelImpl({this.forecastday = const []});

  factory _$ForecastApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastApiModelImplFromJson(json);

  @override
  @JsonKey()
  final Iterable<ForecastDayModel> forecastday;

  @override
  String toString() {
    return 'ForecastApiModel(forecastday: $forecastday)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastApiModelImpl &&
            const DeepCollectionEquality()
                .equals(other.forecastday, forecastday));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(forecastday));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastApiModelImplCopyWith<_$ForecastApiModelImpl> get copyWith =>
      __$$ForecastApiModelImplCopyWithImpl<_$ForecastApiModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastApiModelImplToJson(
      this,
    );
  }
}

abstract class _ForecastApiModel implements ForecastApiModel {
  const factory _ForecastApiModel(
      {final Iterable<ForecastDayModel> forecastday}) = _$ForecastApiModelImpl;

  factory _ForecastApiModel.fromJson(Map<String, dynamic> json) =
      _$ForecastApiModelImpl.fromJson;

  @override
  Iterable<ForecastDayModel> get forecastday;
  @override
  @JsonKey(ignore: true)
  _$$ForecastApiModelImplCopyWith<_$ForecastApiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
