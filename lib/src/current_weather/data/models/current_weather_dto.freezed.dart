// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_weather_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrentWeatherDto _$CurrentWeatherDtoFromJson(Map<String, dynamic> json) {
  return _CurrentWeatherDto.fromJson(json);
}

/// @nodoc
mixin _$CurrentWeatherDto {
  CurrentDto get current => throw _privateConstructorUsedError;
  CurrentWeatherLocationDto? get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentWeatherDtoCopyWith<CurrentWeatherDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWeatherDtoCopyWith<$Res> {
  factory $CurrentWeatherDtoCopyWith(
          CurrentWeatherDto value, $Res Function(CurrentWeatherDto) then) =
      _$CurrentWeatherDtoCopyWithImpl<$Res, CurrentWeatherDto>;
  @useResult
  $Res call({CurrentDto current, CurrentWeatherLocationDto? location});

  $CurrentDtoCopyWith<$Res> get current;
  $CurrentWeatherLocationDtoCopyWith<$Res>? get location;
}

/// @nodoc
class _$CurrentWeatherDtoCopyWithImpl<$Res, $Val extends CurrentWeatherDto>
    implements $CurrentWeatherDtoCopyWith<$Res> {
  _$CurrentWeatherDtoCopyWithImpl(this._value, this._then);

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
              as CurrentDto,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as CurrentWeatherLocationDto?,
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
  $CurrentWeatherLocationDtoCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $CurrentWeatherLocationDtoCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CurrentWeatherDtoImplCopyWith<$Res>
    implements $CurrentWeatherDtoCopyWith<$Res> {
  factory _$$CurrentWeatherDtoImplCopyWith(_$CurrentWeatherDtoImpl value,
          $Res Function(_$CurrentWeatherDtoImpl) then) =
      __$$CurrentWeatherDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CurrentDto current, CurrentWeatherLocationDto? location});

  @override
  $CurrentDtoCopyWith<$Res> get current;
  @override
  $CurrentWeatherLocationDtoCopyWith<$Res>? get location;
}

/// @nodoc
class __$$CurrentWeatherDtoImplCopyWithImpl<$Res>
    extends _$CurrentWeatherDtoCopyWithImpl<$Res, _$CurrentWeatherDtoImpl>
    implements _$$CurrentWeatherDtoImplCopyWith<$Res> {
  __$$CurrentWeatherDtoImplCopyWithImpl(_$CurrentWeatherDtoImpl _value,
      $Res Function(_$CurrentWeatherDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? location = freezed,
  }) {
    return _then(_$CurrentWeatherDtoImpl(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentDto,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as CurrentWeatherLocationDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentWeatherDtoImpl implements _CurrentWeatherDto {
  const _$CurrentWeatherDtoImpl({required this.current, this.location});

  factory _$CurrentWeatherDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentWeatherDtoImplFromJson(json);

  @override
  final CurrentDto current;
  @override
  final CurrentWeatherLocationDto? location;

  @override
  String toString() {
    return 'CurrentWeatherDto(current: $current, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentWeatherDtoImpl &&
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
  _$$CurrentWeatherDtoImplCopyWith<_$CurrentWeatherDtoImpl> get copyWith =>
      __$$CurrentWeatherDtoImplCopyWithImpl<_$CurrentWeatherDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentWeatherDtoImplToJson(
      this,
    );
  }
}

abstract class _CurrentWeatherDto implements CurrentWeatherDto {
  const factory _CurrentWeatherDto(
      {required final CurrentDto current,
      final CurrentWeatherLocationDto? location}) = _$CurrentWeatherDtoImpl;

  factory _CurrentWeatherDto.fromJson(Map<String, dynamic> json) =
      _$CurrentWeatherDtoImpl.fromJson;

  @override
  CurrentDto get current;
  @override
  CurrentWeatherLocationDto? get location;
  @override
  @JsonKey(ignore: true)
  _$$CurrentWeatherDtoImplCopyWith<_$CurrentWeatherDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
