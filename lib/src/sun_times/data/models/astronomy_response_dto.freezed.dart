// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'astronomy_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AstronomyDto _$AstronomyDtoFromJson(Map<String, dynamic> json) {
  return _AstronomyDto.fromJson(json);
}

/// @nodoc
mixin _$AstronomyDto {
  InnerAstronomyDto get astronomy => throw _privateConstructorUsedError;
  LocationDto? get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AstronomyDtoCopyWith<AstronomyDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AstronomyDtoCopyWith<$Res> {
  factory $AstronomyDtoCopyWith(
          AstronomyDto value, $Res Function(AstronomyDto) then) =
      _$AstronomyDtoCopyWithImpl<$Res, AstronomyDto>;
  @useResult
  $Res call({InnerAstronomyDto astronomy, LocationDto? location});

  $InnerAstronomyDtoCopyWith<$Res> get astronomy;
  $LocationDtoCopyWith<$Res>? get location;
}

/// @nodoc
class _$AstronomyDtoCopyWithImpl<$Res, $Val extends AstronomyDto>
    implements $AstronomyDtoCopyWith<$Res> {
  _$AstronomyDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? astronomy = null,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      astronomy: null == astronomy
          ? _value.astronomy
          : astronomy // ignore: cast_nullable_to_non_nullable
              as InnerAstronomyDto,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InnerAstronomyDtoCopyWith<$Res> get astronomy {
    return $InnerAstronomyDtoCopyWith<$Res>(_value.astronomy, (value) {
      return _then(_value.copyWith(astronomy: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationDtoCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationDtoCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AstronomyDtoImplCopyWith<$Res>
    implements $AstronomyDtoCopyWith<$Res> {
  factory _$$AstronomyDtoImplCopyWith(
          _$AstronomyDtoImpl value, $Res Function(_$AstronomyDtoImpl) then) =
      __$$AstronomyDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InnerAstronomyDto astronomy, LocationDto? location});

  @override
  $InnerAstronomyDtoCopyWith<$Res> get astronomy;
  @override
  $LocationDtoCopyWith<$Res>? get location;
}

/// @nodoc
class __$$AstronomyDtoImplCopyWithImpl<$Res>
    extends _$AstronomyDtoCopyWithImpl<$Res, _$AstronomyDtoImpl>
    implements _$$AstronomyDtoImplCopyWith<$Res> {
  __$$AstronomyDtoImplCopyWithImpl(
      _$AstronomyDtoImpl _value, $Res Function(_$AstronomyDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? astronomy = null,
    Object? location = freezed,
  }) {
    return _then(_$AstronomyDtoImpl(
      astronomy: null == astronomy
          ? _value.astronomy
          : astronomy // ignore: cast_nullable_to_non_nullable
              as InnerAstronomyDto,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AstronomyDtoImpl implements _AstronomyDto {
  const _$AstronomyDtoImpl({required this.astronomy, this.location});

  factory _$AstronomyDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AstronomyDtoImplFromJson(json);

  @override
  final InnerAstronomyDto astronomy;
  @override
  final LocationDto? location;

  @override
  String toString() {
    return 'AstronomyDto(astronomy: $astronomy, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AstronomyDtoImpl &&
            (identical(other.astronomy, astronomy) ||
                other.astronomy == astronomy) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, astronomy, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AstronomyDtoImplCopyWith<_$AstronomyDtoImpl> get copyWith =>
      __$$AstronomyDtoImplCopyWithImpl<_$AstronomyDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AstronomyDtoImplToJson(
      this,
    );
  }
}

abstract class _AstronomyDto implements AstronomyDto {
  const factory _AstronomyDto(
      {required final InnerAstronomyDto astronomy,
      final LocationDto? location}) = _$AstronomyDtoImpl;

  factory _AstronomyDto.fromJson(Map<String, dynamic> json) =
      _$AstronomyDtoImpl.fromJson;

  @override
  InnerAstronomyDto get astronomy;
  @override
  LocationDto? get location;
  @override
  @JsonKey(ignore: true)
  _$$AstronomyDtoImplCopyWith<_$AstronomyDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
