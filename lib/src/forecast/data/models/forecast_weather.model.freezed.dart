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

ForecastWeatherModel _$ForecastWeatherModelFromJson(Map<String, dynamic> json) {
  return _ForecastWeatherModel.fromJson(json);
}

/// @nodoc
mixin _$ForecastWeatherModel {
  CurrentModel get current => throw _privateConstructorUsedError;
  ForecastModel get forecast => throw _privateConstructorUsedError;
  ForecastLocationModel? get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastWeatherModelCopyWith<ForecastWeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastWeatherModelCopyWith<$Res> {
  factory $ForecastWeatherModelCopyWith(ForecastWeatherModel value,
          $Res Function(ForecastWeatherModel) then) =
      _$ForecastWeatherModelCopyWithImpl<$Res, ForecastWeatherModel>;
  @useResult
  $Res call(
      {CurrentModel current,
      ForecastModel forecast,
      ForecastLocationModel? location});

  $CurrentModelCopyWith<$Res> get current;
  $ForecastModelCopyWith<$Res> get forecast;
  $ForecastLocationModelCopyWith<$Res>? get location;
}

/// @nodoc
class _$ForecastWeatherModelCopyWithImpl<$Res,
        $Val extends ForecastWeatherModel>
    implements $ForecastWeatherModelCopyWith<$Res> {
  _$ForecastWeatherModelCopyWithImpl(this._value, this._then);

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
              as CurrentModel,
      forecast: null == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as ForecastModel,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as ForecastLocationModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentModelCopyWith<$Res> get current {
    return $CurrentModelCopyWith<$Res>(_value.current, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ForecastModelCopyWith<$Res> get forecast {
    return $ForecastModelCopyWith<$Res>(_value.forecast, (value) {
      return _then(_value.copyWith(forecast: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ForecastLocationModelCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $ForecastLocationModelCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForecastWeatherModelImplCopyWith<$Res>
    implements $ForecastWeatherModelCopyWith<$Res> {
  factory _$$ForecastWeatherModelImplCopyWith(_$ForecastWeatherModelImpl value,
          $Res Function(_$ForecastWeatherModelImpl) then) =
      __$$ForecastWeatherModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CurrentModel current,
      ForecastModel forecast,
      ForecastLocationModel? location});

  @override
  $CurrentModelCopyWith<$Res> get current;
  @override
  $ForecastModelCopyWith<$Res> get forecast;
  @override
  $ForecastLocationModelCopyWith<$Res>? get location;
}

/// @nodoc
class __$$ForecastWeatherModelImplCopyWithImpl<$Res>
    extends _$ForecastWeatherModelCopyWithImpl<$Res, _$ForecastWeatherModelImpl>
    implements _$$ForecastWeatherModelImplCopyWith<$Res> {
  __$$ForecastWeatherModelImplCopyWithImpl(_$ForecastWeatherModelImpl _value,
      $Res Function(_$ForecastWeatherModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? forecast = null,
    Object? location = freezed,
  }) {
    return _then(_$ForecastWeatherModelImpl(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentModel,
      forecast: null == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as ForecastModel,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as ForecastLocationModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastWeatherModelImpl implements _ForecastWeatherModel {
  const _$ForecastWeatherModelImpl(
      {required this.current, required this.forecast, this.location});

  factory _$ForecastWeatherModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastWeatherModelImplFromJson(json);

  @override
  final CurrentModel current;
  @override
  final ForecastModel forecast;
  @override
  final ForecastLocationModel? location;

  @override
  String toString() {
    return 'ForecastWeatherModel(current: $current, forecast: $forecast, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastWeatherModelImpl &&
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
  _$$ForecastWeatherModelImplCopyWith<_$ForecastWeatherModelImpl>
      get copyWith =>
          __$$ForecastWeatherModelImplCopyWithImpl<_$ForecastWeatherModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastWeatherModelImplToJson(
      this,
    );
  }
}

abstract class _ForecastWeatherModel implements ForecastWeatherModel {
  const factory _ForecastWeatherModel(
      {required final CurrentModel current,
      required final ForecastModel forecast,
      final ForecastLocationModel? location}) = _$ForecastWeatherModelImpl;

  factory _ForecastWeatherModel.fromJson(Map<String, dynamic> json) =
      _$ForecastWeatherModelImpl.fromJson;

  @override
  CurrentModel get current;
  @override
  ForecastModel get forecast;
  @override
  ForecastLocationModel? get location;
  @override
  @JsonKey(ignore: true)
  _$$ForecastWeatherModelImplCopyWith<_$ForecastWeatherModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
