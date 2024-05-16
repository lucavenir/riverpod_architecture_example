// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'astronomy.api.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AstronomyApiModel _$AstronomyApiModelFromJson(Map<String, dynamic> json) {
  return _AstronomyApiModel.fromJson(json);
}

/// @nodoc
mixin _$AstronomyApiModel {
  InnerAstronomyApiModel get astronomy => throw _privateConstructorUsedError;
  LocationApiModel? get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AstronomyApiModelCopyWith<AstronomyApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AstronomyApiModelCopyWith<$Res> {
  factory $AstronomyApiModelCopyWith(
          AstronomyApiModel value, $Res Function(AstronomyApiModel) then) =
      _$AstronomyApiModelCopyWithImpl<$Res, AstronomyApiModel>;
  @useResult
  $Res call({InnerAstronomyApiModel astronomy, LocationApiModel? location});

  $InnerAstronomyApiModelCopyWith<$Res> get astronomy;
  $LocationApiModelCopyWith<$Res>? get location;
}

/// @nodoc
class _$AstronomyApiModelCopyWithImpl<$Res, $Val extends AstronomyApiModel>
    implements $AstronomyApiModelCopyWith<$Res> {
  _$AstronomyApiModelCopyWithImpl(this._value, this._then);

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
              as InnerAstronomyApiModel,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationApiModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InnerAstronomyApiModelCopyWith<$Res> get astronomy {
    return $InnerAstronomyApiModelCopyWith<$Res>(_value.astronomy, (value) {
      return _then(_value.copyWith(astronomy: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationApiModelCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationApiModelCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AstronomyApiModelImplCopyWith<$Res>
    implements $AstronomyApiModelCopyWith<$Res> {
  factory _$$AstronomyApiModelImplCopyWith(_$AstronomyApiModelImpl value,
          $Res Function(_$AstronomyApiModelImpl) then) =
      __$$AstronomyApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InnerAstronomyApiModel astronomy, LocationApiModel? location});

  @override
  $InnerAstronomyApiModelCopyWith<$Res> get astronomy;
  @override
  $LocationApiModelCopyWith<$Res>? get location;
}

/// @nodoc
class __$$AstronomyApiModelImplCopyWithImpl<$Res>
    extends _$AstronomyApiModelCopyWithImpl<$Res, _$AstronomyApiModelImpl>
    implements _$$AstronomyApiModelImplCopyWith<$Res> {
  __$$AstronomyApiModelImplCopyWithImpl(_$AstronomyApiModelImpl _value,
      $Res Function(_$AstronomyApiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? astronomy = null,
    Object? location = freezed,
  }) {
    return _then(_$AstronomyApiModelImpl(
      astronomy: null == astronomy
          ? _value.astronomy
          : astronomy // ignore: cast_nullable_to_non_nullable
              as InnerAstronomyApiModel,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationApiModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AstronomyApiModelImpl implements _AstronomyApiModel {
  const _$AstronomyApiModelImpl({required this.astronomy, this.location});

  factory _$AstronomyApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AstronomyApiModelImplFromJson(json);

  @override
  final InnerAstronomyApiModel astronomy;
  @override
  final LocationApiModel? location;

  @override
  String toString() {
    return 'AstronomyApiModel(astronomy: $astronomy, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AstronomyApiModelImpl &&
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
  _$$AstronomyApiModelImplCopyWith<_$AstronomyApiModelImpl> get copyWith =>
      __$$AstronomyApiModelImplCopyWithImpl<_$AstronomyApiModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AstronomyApiModelImplToJson(
      this,
    );
  }
}

abstract class _AstronomyApiModel implements AstronomyApiModel {
  const factory _AstronomyApiModel(
      {required final InnerAstronomyApiModel astronomy,
      final LocationApiModel? location}) = _$AstronomyApiModelImpl;

  factory _AstronomyApiModel.fromJson(Map<String, dynamic> json) =
      _$AstronomyApiModelImpl.fromJson;

  @override
  InnerAstronomyApiModel get astronomy;
  @override
  LocationApiModel? get location;
  @override
  @JsonKey(ignore: true)
  _$$AstronomyApiModelImplCopyWith<_$AstronomyApiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
