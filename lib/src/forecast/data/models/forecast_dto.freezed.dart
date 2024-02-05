// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForecastDto _$ForecastDtoFromJson(Map<String, dynamic> json) {
  return _ForecastDto.fromJson(json);
}

/// @nodoc
mixin _$ForecastDto {
  Iterable<ForecastDayDto> get forecastday =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastDtoCopyWith<ForecastDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastDtoCopyWith<$Res> {
  factory $ForecastDtoCopyWith(
          ForecastDto value, $Res Function(ForecastDto) then) =
      _$ForecastDtoCopyWithImpl<$Res, ForecastDto>;
  @useResult
  $Res call({Iterable<ForecastDayDto> forecastday});
}

/// @nodoc
class _$ForecastDtoCopyWithImpl<$Res, $Val extends ForecastDto>
    implements $ForecastDtoCopyWith<$Res> {
  _$ForecastDtoCopyWithImpl(this._value, this._then);

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
              as Iterable<ForecastDayDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForecastDtoImplCopyWith<$Res>
    implements $ForecastDtoCopyWith<$Res> {
  factory _$$ForecastDtoImplCopyWith(
          _$ForecastDtoImpl value, $Res Function(_$ForecastDtoImpl) then) =
      __$$ForecastDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Iterable<ForecastDayDto> forecastday});
}

/// @nodoc
class __$$ForecastDtoImplCopyWithImpl<$Res>
    extends _$ForecastDtoCopyWithImpl<$Res, _$ForecastDtoImpl>
    implements _$$ForecastDtoImplCopyWith<$Res> {
  __$$ForecastDtoImplCopyWithImpl(
      _$ForecastDtoImpl _value, $Res Function(_$ForecastDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecastday = null,
  }) {
    return _then(_$ForecastDtoImpl(
      forecastday: null == forecastday
          ? _value.forecastday
          : forecastday // ignore: cast_nullable_to_non_nullable
              as Iterable<ForecastDayDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastDtoImpl implements _ForecastDto {
  const _$ForecastDtoImpl({this.forecastday = const []});

  factory _$ForecastDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastDtoImplFromJson(json);

  @override
  @JsonKey()
  final Iterable<ForecastDayDto> forecastday;

  @override
  String toString() {
    return 'ForecastDto(forecastday: $forecastday)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastDtoImpl &&
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
  _$$ForecastDtoImplCopyWith<_$ForecastDtoImpl> get copyWith =>
      __$$ForecastDtoImplCopyWithImpl<_$ForecastDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastDtoImplToJson(
      this,
    );
  }
}

abstract class _ForecastDto implements ForecastDto {
  const factory _ForecastDto({final Iterable<ForecastDayDto> forecastday}) =
      _$ForecastDtoImpl;

  factory _ForecastDto.fromJson(Map<String, dynamic> json) =
      _$ForecastDtoImpl.fromJson;

  @override
  Iterable<ForecastDayDto> get forecastday;
  @override
  @JsonKey(ignore: true)
  _$$ForecastDtoImplCopyWith<_$ForecastDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
