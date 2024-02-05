// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_weather.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CurrentWeather {
  /// our current temperature
  int get temp => throw _privateConstructorUsedError;

  /// a human-readable text about the current weather
  String get weather => throw _privateConstructorUsedError;

  /// latest update of the weather condition
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// a string containing the image url
  String get image => throw _privateConstructorUsedError;

  /// a number for the perceived temperature
  double get perceivedTemp => throw _privateConstructorUsedError;

  /// a number for the humidity percentage
  double get humidity => throw _privateConstructorUsedError;

  /// a number for the wind in km/h
  double get wind => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrentWeatherCopyWith<CurrentWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWeatherCopyWith<$Res> {
  factory $CurrentWeatherCopyWith(
          CurrentWeather value, $Res Function(CurrentWeather) then) =
      _$CurrentWeatherCopyWithImpl<$Res, CurrentWeather>;
  @useResult
  $Res call(
      {int temp,
      String weather,
      DateTime updatedAt,
      String image,
      double perceivedTemp,
      double humidity,
      double wind});
}

/// @nodoc
class _$CurrentWeatherCopyWithImpl<$Res, $Val extends CurrentWeather>
    implements $CurrentWeatherCopyWith<$Res> {
  _$CurrentWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? weather = null,
    Object? updatedAt = null,
    Object? image = null,
    Object? perceivedTemp = null,
    Object? humidity = null,
    Object? wind = null,
  }) {
    return _then(_value.copyWith(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as int,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      perceivedTemp: null == perceivedTemp
          ? _value.perceivedTemp
          : perceivedTemp // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentWeatherImplCopyWith<$Res>
    implements $CurrentWeatherCopyWith<$Res> {
  factory _$$CurrentWeatherImplCopyWith(_$CurrentWeatherImpl value,
          $Res Function(_$CurrentWeatherImpl) then) =
      __$$CurrentWeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int temp,
      String weather,
      DateTime updatedAt,
      String image,
      double perceivedTemp,
      double humidity,
      double wind});
}

/// @nodoc
class __$$CurrentWeatherImplCopyWithImpl<$Res>
    extends _$CurrentWeatherCopyWithImpl<$Res, _$CurrentWeatherImpl>
    implements _$$CurrentWeatherImplCopyWith<$Res> {
  __$$CurrentWeatherImplCopyWithImpl(
      _$CurrentWeatherImpl _value, $Res Function(_$CurrentWeatherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? weather = null,
    Object? updatedAt = null,
    Object? image = null,
    Object? perceivedTemp = null,
    Object? humidity = null,
    Object? wind = null,
  }) {
    return _then(_$CurrentWeatherImpl(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as int,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      perceivedTemp: null == perceivedTemp
          ? _value.perceivedTemp
          : perceivedTemp // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$CurrentWeatherImpl implements _CurrentWeather {
  const _$CurrentWeatherImpl(
      {required this.temp,
      required this.weather,
      required this.updatedAt,
      required this.image,
      required this.perceivedTemp,
      required this.humidity,
      required this.wind});

  /// our current temperature
  @override
  final int temp;

  /// a human-readable text about the current weather
  @override
  final String weather;

  /// latest update of the weather condition
  @override
  final DateTime updatedAt;

  /// a string containing the image url
  @override
  final String image;

  /// a number for the perceived temperature
  @override
  final double perceivedTemp;

  /// a number for the humidity percentage
  @override
  final double humidity;

  /// a number for the wind in km/h
  @override
  final double wind;

  @override
  String toString() {
    return 'CurrentWeather(temp: $temp, weather: $weather, updatedAt: $updatedAt, image: $image, perceivedTemp: $perceivedTemp, humidity: $humidity, wind: $wind)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentWeatherImpl &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.weather, weather) || other.weather == weather) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.perceivedTemp, perceivedTemp) ||
                other.perceivedTemp == perceivedTemp) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.wind, wind) || other.wind == wind));
  }

  @override
  int get hashCode => Object.hash(runtimeType, temp, weather, updatedAt, image,
      perceivedTemp, humidity, wind);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentWeatherImplCopyWith<_$CurrentWeatherImpl> get copyWith =>
      __$$CurrentWeatherImplCopyWithImpl<_$CurrentWeatherImpl>(
          this, _$identity);
}

abstract class _CurrentWeather implements CurrentWeather {
  const factory _CurrentWeather(
      {required final int temp,
      required final String weather,
      required final DateTime updatedAt,
      required final String image,
      required final double perceivedTemp,
      required final double humidity,
      required final double wind}) = _$CurrentWeatherImpl;

  @override

  /// our current temperature
  int get temp;
  @override

  /// a human-readable text about the current weather
  String get weather;
  @override

  /// latest update of the weather condition
  DateTime get updatedAt;
  @override

  /// a string containing the image url
  String get image;
  @override

  /// a number for the perceived temperature
  double get perceivedTemp;
  @override

  /// a number for the humidity percentage
  double get humidity;
  @override

  /// a number for the wind in km/h
  double get wind;
  @override
  @JsonKey(ignore: true)
  _$$CurrentWeatherImplCopyWith<_$CurrentWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
