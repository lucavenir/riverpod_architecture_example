// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_weather.api.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForecastWeatherApiModel _$ForecastWeatherApiModelFromJson(
    Map<String, dynamic> json) {
  return _ForecastWeatherApiModel.fromJson(json);
}

/// @nodoc
mixin _$ForecastWeatherApiModel {
  CurrentForecastApiModel get current => throw _privateConstructorUsedError;
  ForecastApiModel get forecast => throw _privateConstructorUsedError;
  ForecastLocationApiModel? get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastWeatherApiModelCopyWith<ForecastWeatherApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastWeatherApiModelCopyWith<$Res> {
  factory $ForecastWeatherApiModelCopyWith(ForecastWeatherApiModel value,
          $Res Function(ForecastWeatherApiModel) then) =
      _$ForecastWeatherApiModelCopyWithImpl<$Res, ForecastWeatherApiModel>;
  @useResult
  $Res call(
      {CurrentForecastApiModel current,
      ForecastApiModel forecast,
      ForecastLocationApiModel? location});

  $CurrentForecastApiModelCopyWith<$Res> get current;
  $ForecastApiModelCopyWith<$Res> get forecast;
  $ForecastLocationApiModelCopyWith<$Res>? get location;
}

/// @nodoc
class _$ForecastWeatherApiModelCopyWithImpl<$Res,
        $Val extends ForecastWeatherApiModel>
    implements $ForecastWeatherApiModelCopyWith<$Res> {
  _$ForecastWeatherApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? forecast = null,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentForecastApiModel,
      forecast: null == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as ForecastApiModel,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as ForecastLocationApiModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentForecastApiModelCopyWith<$Res> get current {
    return $CurrentForecastApiModelCopyWith<$Res>(_value.current, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ForecastApiModelCopyWith<$Res> get forecast {
    return $ForecastApiModelCopyWith<$Res>(_value.forecast, (value) {
      return _then(_value.copyWith(forecast: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ForecastLocationApiModelCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $ForecastLocationApiModelCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForecastWeatherApiModelImplCopyWith<$Res>
    implements $ForecastWeatherApiModelCopyWith<$Res> {
  factory _$$ForecastWeatherApiModelImplCopyWith(
          _$ForecastWeatherApiModelImpl value,
          $Res Function(_$ForecastWeatherApiModelImpl) then) =
      __$$ForecastWeatherApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CurrentForecastApiModel current,
      ForecastApiModel forecast,
      ForecastLocationApiModel? location});

  @override
  $CurrentForecastApiModelCopyWith<$Res> get current;
  @override
  $ForecastApiModelCopyWith<$Res> get forecast;
  @override
  $ForecastLocationApiModelCopyWith<$Res>? get location;
}

/// @nodoc
class __$$ForecastWeatherApiModelImplCopyWithImpl<$Res>
    extends _$ForecastWeatherApiModelCopyWithImpl<$Res,
        _$ForecastWeatherApiModelImpl>
    implements _$$ForecastWeatherApiModelImplCopyWith<$Res> {
  __$$ForecastWeatherApiModelImplCopyWithImpl(
      _$ForecastWeatherApiModelImpl _value,
      $Res Function(_$ForecastWeatherApiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? forecast = null,
    Object? location = freezed,
  }) {
    return _then(_$ForecastWeatherApiModelImpl(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentForecastApiModel,
      forecast: null == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as ForecastApiModel,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as ForecastLocationApiModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastWeatherApiModelImpl implements _ForecastWeatherApiModel {
  const _$ForecastWeatherApiModelImpl(
      {required this.current, required this.forecast, this.location});

  factory _$ForecastWeatherApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastWeatherApiModelImplFromJson(json);

  @override
  final CurrentForecastApiModel current;
  @override
  final ForecastApiModel forecast;
  @override
  final ForecastLocationApiModel? location;

  @override
  String toString() {
    return 'ForecastWeatherApiModel(current: $current, forecast: $forecast, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastWeatherApiModelImpl &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.forecast, forecast) ||
                other.forecast == forecast) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, current, forecast, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastWeatherApiModelImplCopyWith<_$ForecastWeatherApiModelImpl>
      get copyWith => __$$ForecastWeatherApiModelImplCopyWithImpl<
          _$ForecastWeatherApiModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastWeatherApiModelImplToJson(
      this,
    );
  }
}

abstract class _ForecastWeatherApiModel implements ForecastWeatherApiModel {
  const factory _ForecastWeatherApiModel(
          {required final CurrentForecastApiModel current,
          required final ForecastApiModel forecast,
          final ForecastLocationApiModel? location}) =
      _$ForecastWeatherApiModelImpl;

  factory _ForecastWeatherApiModel.fromJson(Map<String, dynamic> json) =
      _$ForecastWeatherApiModelImpl.fromJson;

  @override
  CurrentForecastApiModel get current;
  @override
  ForecastApiModel get forecast;
  @override
  ForecastLocationApiModel? get location;
  @override
  @JsonKey(ignore: true)
  _$$ForecastWeatherApiModelImplCopyWith<_$ForecastWeatherApiModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
