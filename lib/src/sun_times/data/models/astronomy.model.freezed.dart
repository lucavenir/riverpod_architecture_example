// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'astronomy.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AstronomyModel _$AstronomyModelFromJson(Map<String, dynamic> json) {
  return _AstronomyModel.fromJson(json);
}

/// @nodoc
mixin _$AstronomyModel {
  InnerAstronomyModel get astronomy => throw _privateConstructorUsedError;
  LocationModel? get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AstronomyModelCopyWith<AstronomyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AstronomyModelCopyWith<$Res> {
  factory $AstronomyModelCopyWith(
          AstronomyModel value, $Res Function(AstronomyModel) then) =
      _$AstronomyModelCopyWithImpl<$Res, AstronomyModel>;
  @useResult
  $Res call({InnerAstronomyModel astronomy, LocationModel? location});

  $InnerAstronomyModelCopyWith<$Res> get astronomy;
  $LocationModelCopyWith<$Res>? get location;
}

/// @nodoc
class _$AstronomyModelCopyWithImpl<$Res, $Val extends AstronomyModel>
    implements $AstronomyModelCopyWith<$Res> {
  _$AstronomyModelCopyWithImpl(this._value, this._then);

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
              as InnerAstronomyModel,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InnerAstronomyModelCopyWith<$Res> get astronomy {
    return $InnerAstronomyModelCopyWith<$Res>(_value.astronomy, (value) {
      return _then(_value.copyWith(astronomy: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AstronomyModelImplCopyWith<$Res>
    implements $AstronomyModelCopyWith<$Res> {
  factory _$$AstronomyModelImplCopyWith(_$AstronomyModelImpl value,
          $Res Function(_$AstronomyModelImpl) then) =
      __$$AstronomyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InnerAstronomyModel astronomy, LocationModel? location});

  @override
  $InnerAstronomyModelCopyWith<$Res> get astronomy;
  @override
  $LocationModelCopyWith<$Res>? get location;
}

/// @nodoc
class __$$AstronomyModelImplCopyWithImpl<$Res>
    extends _$AstronomyModelCopyWithImpl<$Res, _$AstronomyModelImpl>
    implements _$$AstronomyModelImplCopyWith<$Res> {
  __$$AstronomyModelImplCopyWithImpl(
      _$AstronomyModelImpl _value, $Res Function(_$AstronomyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? astronomy = null,
    Object? location = freezed,
  }) {
    return _then(_$AstronomyModelImpl(
      astronomy: null == astronomy
          ? _value.astronomy
          : astronomy // ignore: cast_nullable_to_non_nullable
              as InnerAstronomyModel,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AstronomyModelImpl implements _AstronomyModel {
  const _$AstronomyModelImpl({required this.astronomy, this.location});

  factory _$AstronomyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AstronomyModelImplFromJson(json);

  @override
  final InnerAstronomyModel astronomy;
  @override
  final LocationModel? location;

  @override
  String toString() {
    return 'AstronomyModel(astronomy: $astronomy, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AstronomyModelImpl &&
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
  _$$AstronomyModelImplCopyWith<_$AstronomyModelImpl> get copyWith =>
      __$$AstronomyModelImplCopyWithImpl<_$AstronomyModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AstronomyModelImplToJson(
      this,
    );
  }
}

abstract class _AstronomyModel implements AstronomyModel {
  const factory _AstronomyModel(
      {required final InnerAstronomyModel astronomy,
      final LocationModel? location}) = _$AstronomyModelImpl;

  factory _AstronomyModel.fromJson(Map<String, dynamic> json) =
      _$AstronomyModelImpl.fromJson;

  @override
  InnerAstronomyModel get astronomy;
  @override
  LocationModel? get location;
  @override
  @JsonKey(ignore: true)
  _$$AstronomyModelImplCopyWith<_$AstronomyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
