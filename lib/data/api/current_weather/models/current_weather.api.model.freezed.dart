// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_weather.api.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrentWeatherApiModel _$CurrentWeatherApiModelFromJson(
    Map<String, dynamic> json) {
  return _CurrentWeatherApiModel.fromJson(json);
}

/// @nodoc
mixin _$CurrentWeatherApiModel {
  CurrentApiModel get current => throw _privateConstructorUsedError;
  CurrentWeatherLocationApiModel? get location =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentWeatherApiModelCopyWith<CurrentWeatherApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWeatherApiModelCopyWith<$Res> {
  factory $CurrentWeatherApiModelCopyWith(CurrentWeatherApiModel value,
          $Res Function(CurrentWeatherApiModel) then) =
      _$CurrentWeatherApiModelCopyWithImpl<$Res, CurrentWeatherApiModel>;
  @useResult
  $Res call(
      {CurrentApiModel current, CurrentWeatherLocationApiModel? location});

  $CurrentApiModelCopyWith<$Res> get current;
  $CurrentWeatherLocationApiModelCopyWith<$Res>? get location;
}

/// @nodoc
class _$CurrentWeatherApiModelCopyWithImpl<$Res,
        $Val extends CurrentWeatherApiModel>
    implements $CurrentWeatherApiModelCopyWith<$Res> {
  _$CurrentWeatherApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentApiModel,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as CurrentWeatherLocationApiModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentApiModelCopyWith<$Res> get current {
    return $CurrentApiModelCopyWith<$Res>(_value.current, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentWeatherLocationApiModelCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $CurrentWeatherLocationApiModelCopyWith<$Res>(_value.location!,
        (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CurrentWeatherApiModelImplCopyWith<$Res>
    implements $CurrentWeatherApiModelCopyWith<$Res> {
  factory _$$CurrentWeatherApiModelImplCopyWith(
          _$CurrentWeatherApiModelImpl value,
          $Res Function(_$CurrentWeatherApiModelImpl) then) =
      __$$CurrentWeatherApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CurrentApiModel current, CurrentWeatherLocationApiModel? location});

  @override
  $CurrentApiModelCopyWith<$Res> get current;
  @override
  $CurrentWeatherLocationApiModelCopyWith<$Res>? get location;
}

/// @nodoc
class __$$CurrentWeatherApiModelImplCopyWithImpl<$Res>
    extends _$CurrentWeatherApiModelCopyWithImpl<$Res,
        _$CurrentWeatherApiModelImpl>
    implements _$$CurrentWeatherApiModelImplCopyWith<$Res> {
  __$$CurrentWeatherApiModelImplCopyWithImpl(
      _$CurrentWeatherApiModelImpl _value,
      $Res Function(_$CurrentWeatherApiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? location = freezed,
  }) {
    return _then(_$CurrentWeatherApiModelImpl(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentApiModel,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as CurrentWeatherLocationApiModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentWeatherApiModelImpl implements _CurrentWeatherApiModel {
  const _$CurrentWeatherApiModelImpl({required this.current, this.location});

  factory _$CurrentWeatherApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentWeatherApiModelImplFromJson(json);

  @override
  final CurrentApiModel current;
  @override
  final CurrentWeatherLocationApiModel? location;

  @override
  String toString() {
    return 'CurrentWeatherApiModel(current: $current, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentWeatherApiModelImpl &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, current, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentWeatherApiModelImplCopyWith<_$CurrentWeatherApiModelImpl>
      get copyWith => __$$CurrentWeatherApiModelImplCopyWithImpl<
          _$CurrentWeatherApiModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentWeatherApiModelImplToJson(
      this,
    );
  }
}

abstract class _CurrentWeatherApiModel implements CurrentWeatherApiModel {
  const factory _CurrentWeatherApiModel(
          {required final CurrentApiModel current,
          final CurrentWeatherLocationApiModel? location}) =
      _$CurrentWeatherApiModelImpl;

  factory _CurrentWeatherApiModel.fromJson(Map<String, dynamic> json) =
      _$CurrentWeatherApiModelImpl.fromJson;

  @override
  CurrentApiModel get current;
  @override
  CurrentWeatherLocationApiModel? get location;
  @override
  @JsonKey(ignore: true)
  _$$CurrentWeatherApiModelImplCopyWith<_$CurrentWeatherApiModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
