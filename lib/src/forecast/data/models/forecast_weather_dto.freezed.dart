// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_weather_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForecastWeatherDto _$ForecastWeatherDtoFromJson(Map<String, dynamic> json) {
  return _ForecastWeatherDto.fromJson(json);
}

/// @nodoc
mixin _$ForecastWeatherDto {
  CurrentDto get current => throw _privateConstructorUsedError;
  ForecastDto get forecast => throw _privateConstructorUsedError;
  ForecastLocationDto? get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastWeatherDtoCopyWith<ForecastWeatherDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastWeatherDtoCopyWith<$Res> {
  factory $ForecastWeatherDtoCopyWith(
          ForecastWeatherDto value, $Res Function(ForecastWeatherDto) then) =
      _$ForecastWeatherDtoCopyWithImpl<$Res, ForecastWeatherDto>;
  @useResult
  $Res call(
      {CurrentDto current,
      ForecastDto forecast,
      ForecastLocationDto? location});

  $CurrentDtoCopyWith<$Res> get current;
  $ForecastDtoCopyWith<$Res> get forecast;
  $ForecastLocationDtoCopyWith<$Res>? get location;
}

/// @nodoc
class _$ForecastWeatherDtoCopyWithImpl<$Res, $Val extends ForecastWeatherDto>
    implements $ForecastWeatherDtoCopyWith<$Res> {
  _$ForecastWeatherDtoCopyWithImpl(this._value, this._then);

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
              as CurrentDto,
      forecast: null == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as ForecastDto,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as ForecastLocationDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentDtoCopyWith<$Res> get current {
    return $CurrentDtoCopyWith<$Res>(_value.current, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ForecastDtoCopyWith<$Res> get forecast {
    return $ForecastDtoCopyWith<$Res>(_value.forecast, (value) {
      return _then(_value.copyWith(forecast: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ForecastLocationDtoCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $ForecastLocationDtoCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForecastWeatherDtoImplCopyWith<$Res>
    implements $ForecastWeatherDtoCopyWith<$Res> {
  factory _$$ForecastWeatherDtoImplCopyWith(_$ForecastWeatherDtoImpl value,
          $Res Function(_$ForecastWeatherDtoImpl) then) =
      __$$ForecastWeatherDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CurrentDto current,
      ForecastDto forecast,
      ForecastLocationDto? location});

  @override
  $CurrentDtoCopyWith<$Res> get current;
  @override
  $ForecastDtoCopyWith<$Res> get forecast;
  @override
  $ForecastLocationDtoCopyWith<$Res>? get location;
}

/// @nodoc
class __$$ForecastWeatherDtoImplCopyWithImpl<$Res>
    extends _$ForecastWeatherDtoCopyWithImpl<$Res, _$ForecastWeatherDtoImpl>
    implements _$$ForecastWeatherDtoImplCopyWith<$Res> {
  __$$ForecastWeatherDtoImplCopyWithImpl(_$ForecastWeatherDtoImpl _value,
      $Res Function(_$ForecastWeatherDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? forecast = null,
    Object? location = freezed,
  }) {
    return _then(_$ForecastWeatherDtoImpl(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentDto,
      forecast: null == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as ForecastDto,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as ForecastLocationDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastWeatherDtoImpl implements _ForecastWeatherDto {
  const _$ForecastWeatherDtoImpl(
      {required this.current, required this.forecast, this.location});

  factory _$ForecastWeatherDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastWeatherDtoImplFromJson(json);

  @override
  final CurrentDto current;
  @override
  final ForecastDto forecast;
  @override
  final ForecastLocationDto? location;

  @override
  String toString() {
    return 'ForecastWeatherDto(current: $current, forecast: $forecast, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastWeatherDtoImpl &&
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
  _$$ForecastWeatherDtoImplCopyWith<_$ForecastWeatherDtoImpl> get copyWith =>
      __$$ForecastWeatherDtoImplCopyWithImpl<_$ForecastWeatherDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastWeatherDtoImplToJson(
      this,
    );
  }
}

abstract class _ForecastWeatherDto implements ForecastWeatherDto {
  const factory _ForecastWeatherDto(
      {required final CurrentDto current,
      required final ForecastDto forecast,
      final ForecastLocationDto? location}) = _$ForecastWeatherDtoImpl;

  factory _ForecastWeatherDto.fromJson(Map<String, dynamic> json) =
      _$ForecastWeatherDtoImpl.fromJson;

  @override
  CurrentDto get current;
  @override
  ForecastDto get forecast;
  @override
  ForecastLocationDto? get location;
  @override
  @JsonKey(ignore: true)
  _$$ForecastWeatherDtoImplCopyWith<_$ForecastWeatherDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
