// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationApiModel _$LocationApiModelFromJson(Map<String, dynamic> json) {
  return _LocationApiModel.fromJson(json);
}

/// @nodoc
mixin _$LocationApiModel {
  String get name => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;
  double? get lat => throw _privateConstructorUsedError;
  double? get lon => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationApiModelCopyWith<LocationApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationApiModelCopyWith<$Res> {
  factory $LocationApiModelCopyWith(
          LocationApiModel value, $Res Function(LocationApiModel) then) =
      _$LocationApiModelCopyWithImpl<$Res, LocationApiModel>;
  @useResult
  $Res call(
      {String name,
      String country,
      int? id,
      String? region,
      double? lat,
      double? lon,
      String? url});
}

/// @nodoc
class _$LocationApiModelCopyWithImpl<$Res, $Val extends LocationApiModel>
    implements $LocationApiModelCopyWith<$Res> {
  _$LocationApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? country = null,
    Object? id = freezed,
    Object? region = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationApiModelImplCopyWith<$Res>
    implements $LocationApiModelCopyWith<$Res> {
  factory _$$LocationApiModelImplCopyWith(_$LocationApiModelImpl value,
          $Res Function(_$LocationApiModelImpl) then) =
      __$$LocationApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String country,
      int? id,
      String? region,
      double? lat,
      double? lon,
      String? url});
}

/// @nodoc
class __$$LocationApiModelImplCopyWithImpl<$Res>
    extends _$LocationApiModelCopyWithImpl<$Res, _$LocationApiModelImpl>
    implements _$$LocationApiModelImplCopyWith<$Res> {
  __$$LocationApiModelImplCopyWithImpl(_$LocationApiModelImpl _value,
      $Res Function(_$LocationApiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? country = null,
    Object? id = freezed,
    Object? region = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
    Object? url = freezed,
  }) {
    return _then(_$LocationApiModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationApiModelImpl implements _LocationApiModel {
  const _$LocationApiModelImpl(
      {required this.name,
      required this.country,
      this.id,
      this.region,
      this.lat,
      this.lon,
      this.url});

  factory _$LocationApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationApiModelImplFromJson(json);

  @override
  final String name;
  @override
  final String country;
  @override
  final int? id;
  @override
  final String? region;
  @override
  final double? lat;
  @override
  final double? lon;
  @override
  final String? url;

  @override
  String toString() {
    return 'LocationApiModel(name: $name, country: $country, id: $id, region: $region, lat: $lat, lon: $lon, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationApiModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, country, id, region, lat, lon, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationApiModelImplCopyWith<_$LocationApiModelImpl> get copyWith =>
      __$$LocationApiModelImplCopyWithImpl<_$LocationApiModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationApiModelImplToJson(
      this,
    );
  }
}

abstract class _LocationApiModel implements LocationApiModel {
  const factory _LocationApiModel(
      {required final String name,
      required final String country,
      final int? id,
      final String? region,
      final double? lat,
      final double? lon,
      final String? url}) = _$LocationApiModelImpl;

  factory _LocationApiModel.fromJson(Map<String, dynamic> json) =
      _$LocationApiModelImpl.fromJson;

  @override
  String get name;
  @override
  String get country;
  @override
  int? get id;
  @override
  String? get region;
  @override
  double? get lat;
  @override
  double? get lon;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$LocationApiModelImplCopyWith<_$LocationApiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
