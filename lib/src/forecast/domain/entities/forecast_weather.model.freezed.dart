// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_weather.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ForecastWeather {
  /// latest update of the weather conditions
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// list of forecasts of the next days
  List<ForecastDay> get previsions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForecastWeatherCopyWith<ForecastWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastWeatherCopyWith<$Res> {
  factory $ForecastWeatherCopyWith(
          ForecastWeather value, $Res Function(ForecastWeather) then) =
      _$ForecastWeatherCopyWithImpl<$Res, ForecastWeather>;
  @useResult
  $Res call({DateTime updatedAt, List<ForecastDay> previsions});
}

/// @nodoc
class _$ForecastWeatherCopyWithImpl<$Res, $Val extends ForecastWeather>
    implements $ForecastWeatherCopyWith<$Res> {
  _$ForecastWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatedAt = null,
    Object? previsions = null,
  }) {
    return _then(_value.copyWith(
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      previsions: null == previsions
          ? _value.previsions
          : previsions // ignore: cast_nullable_to_non_nullable
              as List<ForecastDay>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForecastWeatherImplCopyWith<$Res>
    implements $ForecastWeatherCopyWith<$Res> {
  factory _$$ForecastWeatherImplCopyWith(_$ForecastWeatherImpl value,
          $Res Function(_$ForecastWeatherImpl) then) =
      __$$ForecastWeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime updatedAt, List<ForecastDay> previsions});
}

/// @nodoc
class __$$ForecastWeatherImplCopyWithImpl<$Res>
    extends _$ForecastWeatherCopyWithImpl<$Res, _$ForecastWeatherImpl>
    implements _$$ForecastWeatherImplCopyWith<$Res> {
  __$$ForecastWeatherImplCopyWithImpl(
      _$ForecastWeatherImpl _value, $Res Function(_$ForecastWeatherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatedAt = null,
    Object? previsions = null,
  }) {
    return _then(_$ForecastWeatherImpl(
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      previsions: null == previsions
          ? _value._previsions
          : previsions // ignore: cast_nullable_to_non_nullable
              as List<ForecastDay>,
    ));
  }
}

/// @nodoc

class _$ForecastWeatherImpl extends _ForecastWeather {
  const _$ForecastWeatherImpl(
      {required this.updatedAt, required final List<ForecastDay> previsions})
      : _previsions = previsions,
        super._();

  /// latest update of the weather conditions
  @override
  final DateTime updatedAt;

  /// list of forecasts of the next days
  final List<ForecastDay> _previsions;

  /// list of forecasts of the next days
  @override
  List<ForecastDay> get previsions {
    if (_previsions is EqualUnmodifiableListView) return _previsions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_previsions);
  }

  @override
  String toString() {
    return 'ForecastWeather(updatedAt: $updatedAt, previsions: $previsions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastWeatherImpl &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._previsions, _previsions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, updatedAt, const DeepCollectionEquality().hash(_previsions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastWeatherImplCopyWith<_$ForecastWeatherImpl> get copyWith =>
      __$$ForecastWeatherImplCopyWithImpl<_$ForecastWeatherImpl>(
          this, _$identity);
}

abstract class _ForecastWeather extends ForecastWeather {
  const factory _ForecastWeather(
      {required final DateTime updatedAt,
      required final List<ForecastDay> previsions}) = _$ForecastWeatherImpl;
  const _ForecastWeather._() : super._();

  @override

  /// latest update of the weather conditions
  DateTime get updatedAt;
  @override

  /// list of forecasts of the next days
  List<ForecastDay> get previsions;
  @override
  @JsonKey(ignore: true)
  _$$ForecastWeatherImplCopyWith<_$ForecastWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
