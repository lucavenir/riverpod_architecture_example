// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'astro.api.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AstroApiModel _$AstroApiModelFromJson(Map<String, dynamic> json) {
  return _AstroApiModel.fromJson(json);
}

/// @nodoc
mixin _$AstroApiModel {
  String get sunrise => throw _privateConstructorUsedError;
  String get sunset => throw _privateConstructorUsedError;
  String? get moonrise => throw _privateConstructorUsedError;
  String? get moonset => throw _privateConstructorUsedError;
  String? get moonPhase => throw _privateConstructorUsedError;
  String? get moonIllumination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AstroApiModelCopyWith<AstroApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AstroApiModelCopyWith<$Res> {
  factory $AstroApiModelCopyWith(
          AstroApiModel value, $Res Function(AstroApiModel) then) =
      _$AstroApiModelCopyWithImpl<$Res, AstroApiModel>;
  @useResult
  $Res call(
      {String sunrise,
      String sunset,
      String? moonrise,
      String? moonset,
      String? moonPhase,
      String? moonIllumination});
}

/// @nodoc
class _$AstroApiModelCopyWithImpl<$Res, $Val extends AstroApiModel>
    implements $AstroApiModelCopyWith<$Res> {
  _$AstroApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sunrise = null,
    Object? sunset = null,
    Object? moonrise = freezed,
    Object? moonset = freezed,
    Object? moonPhase = freezed,
    Object? moonIllumination = freezed,
  }) {
    return _then(_value.copyWith(
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as String,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as String,
      moonrise: freezed == moonrise
          ? _value.moonrise
          : moonrise // ignore: cast_nullable_to_non_nullable
              as String?,
      moonset: freezed == moonset
          ? _value.moonset
          : moonset // ignore: cast_nullable_to_non_nullable
              as String?,
      moonPhase: freezed == moonPhase
          ? _value.moonPhase
          : moonPhase // ignore: cast_nullable_to_non_nullable
              as String?,
      moonIllumination: freezed == moonIllumination
          ? _value.moonIllumination
          : moonIllumination // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AstroApiModelImplCopyWith<$Res>
    implements $AstroApiModelCopyWith<$Res> {
  factory _$$AstroApiModelImplCopyWith(
          _$AstroApiModelImpl value, $Res Function(_$AstroApiModelImpl) then) =
      __$$AstroApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String sunrise,
      String sunset,
      String? moonrise,
      String? moonset,
      String? moonPhase,
      String? moonIllumination});
}

/// @nodoc
class __$$AstroApiModelImplCopyWithImpl<$Res>
    extends _$AstroApiModelCopyWithImpl<$Res, _$AstroApiModelImpl>
    implements _$$AstroApiModelImplCopyWith<$Res> {
  __$$AstroApiModelImplCopyWithImpl(
      _$AstroApiModelImpl _value, $Res Function(_$AstroApiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sunrise = null,
    Object? sunset = null,
    Object? moonrise = freezed,
    Object? moonset = freezed,
    Object? moonPhase = freezed,
    Object? moonIllumination = freezed,
  }) {
    return _then(_$AstroApiModelImpl(
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as String,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as String,
      moonrise: freezed == moonrise
          ? _value.moonrise
          : moonrise // ignore: cast_nullable_to_non_nullable
              as String?,
      moonset: freezed == moonset
          ? _value.moonset
          : moonset // ignore: cast_nullable_to_non_nullable
              as String?,
      moonPhase: freezed == moonPhase
          ? _value.moonPhase
          : moonPhase // ignore: cast_nullable_to_non_nullable
              as String?,
      moonIllumination: freezed == moonIllumination
          ? _value.moonIllumination
          : moonIllumination // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AstroApiModelImpl implements _AstroApiModel {
  const _$AstroApiModelImpl(
      {required this.sunrise,
      required this.sunset,
      this.moonrise,
      this.moonset,
      this.moonPhase,
      this.moonIllumination});

  factory _$AstroApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AstroApiModelImplFromJson(json);

  @override
  final String sunrise;
  @override
  final String sunset;
  @override
  final String? moonrise;
  @override
  final String? moonset;
  @override
  final String? moonPhase;
  @override
  final String? moonIllumination;

  @override
  String toString() {
    return 'AstroApiModel(sunrise: $sunrise, sunset: $sunset, moonrise: $moonrise, moonset: $moonset, moonPhase: $moonPhase, moonIllumination: $moonIllumination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AstroApiModelImpl &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset) &&
            (identical(other.moonrise, moonrise) ||
                other.moonrise == moonrise) &&
            (identical(other.moonset, moonset) || other.moonset == moonset) &&
            (identical(other.moonPhase, moonPhase) ||
                other.moonPhase == moonPhase) &&
            (identical(other.moonIllumination, moonIllumination) ||
                other.moonIllumination == moonIllumination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sunrise, sunset, moonrise,
      moonset, moonPhase, moonIllumination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AstroApiModelImplCopyWith<_$AstroApiModelImpl> get copyWith =>
      __$$AstroApiModelImplCopyWithImpl<_$AstroApiModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AstroApiModelImplToJson(
      this,
    );
  }
}

abstract class _AstroApiModel implements AstroApiModel {
  const factory _AstroApiModel(
      {required final String sunrise,
      required final String sunset,
      final String? moonrise,
      final String? moonset,
      final String? moonPhase,
      final String? moonIllumination}) = _$AstroApiModelImpl;

  factory _AstroApiModel.fromJson(Map<String, dynamic> json) =
      _$AstroApiModelImpl.fromJson;

  @override
  String get sunrise;
  @override
  String get sunset;
  @override
  String? get moonrise;
  @override
  String? get moonset;
  @override
  String? get moonPhase;
  @override
  String? get moonIllumination;
  @override
  @JsonKey(ignore: true)
  _$$AstroApiModelImplCopyWith<_$AstroApiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
