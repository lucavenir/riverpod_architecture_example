// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_location.api.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForecastLocationApiModel _$ForecastLocationApiModelFromJson(
    Map<String, dynamic> json) {
  return _ForecastLocationApiModel.fromJson(json);
}

/// @nodoc
mixin _$ForecastLocationApiModel {
  String? get name => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  double? get lat => throw _privateConstructorUsedError;
  double? get lon => throw _privateConstructorUsedError;
  String? get tzId => throw _privateConstructorUsedError;
  int? get localtimeEpoch => throw _privateConstructorUsedError;
  String? get localtime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastLocationApiModelCopyWith<ForecastLocationApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastLocationApiModelCopyWith<$Res> {
  factory $ForecastLocationApiModelCopyWith(ForecastLocationApiModel value,
          $Res Function(ForecastLocationApiModel) then) =
      _$ForecastLocationApiModelCopyWithImpl<$Res, ForecastLocationApiModel>;
  @useResult
  $Res call(
      {String? name,
      String? region,
      String? country,
      double? lat,
      double? lon,
      String? tzId,
      int? localtimeEpoch,
      String? localtime});
}

/// @nodoc
class _$ForecastLocationApiModelCopyWithImpl<$Res,
        $Val extends ForecastLocationApiModel>
    implements $ForecastLocationApiModelCopyWith<$Res> {
  _$ForecastLocationApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? region = freezed,
    Object? country = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
    Object? tzId = freezed,
    Object? localtimeEpoch = freezed,
    Object? localtime = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
      tzId: freezed == tzId
          ? _value.tzId
          : tzId // ignore: cast_nullable_to_non_nullable
              as String?,
      localtimeEpoch: freezed == localtimeEpoch
          ? _value.localtimeEpoch
          : localtimeEpoch // ignore: cast_nullable_to_non_nullable
              as int?,
      localtime: freezed == localtime
          ? _value.localtime
          : localtime // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForecastLocationApiModelImplCopyWith<$Res>
    implements $ForecastLocationApiModelCopyWith<$Res> {
  factory _$$ForecastLocationApiModelImplCopyWith(
          _$ForecastLocationApiModelImpl value,
          $Res Function(_$ForecastLocationApiModelImpl) then) =
      __$$ForecastLocationApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? region,
      String? country,
      double? lat,
      double? lon,
      String? tzId,
      int? localtimeEpoch,
      String? localtime});
}

/// @nodoc
class __$$ForecastLocationApiModelImplCopyWithImpl<$Res>
    extends _$ForecastLocationApiModelCopyWithImpl<$Res,
        _$ForecastLocationApiModelImpl>
    implements _$$ForecastLocationApiModelImplCopyWith<$Res> {
  __$$ForecastLocationApiModelImplCopyWithImpl(
      _$ForecastLocationApiModelImpl _value,
      $Res Function(_$ForecastLocationApiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? region = freezed,
    Object? country = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
    Object? tzId = freezed,
    Object? localtimeEpoch = freezed,
    Object? localtime = freezed,
  }) {
    return _then(_$ForecastLocationApiModelImpl(
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
      freezed == tzId
          ? _value.tzId
          : tzId // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == localtimeEpoch
          ? _value.localtimeEpoch
          : localtimeEpoch // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == localtime
          ? _value.localtime
          : localtime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastLocationApiModelImpl implements _ForecastLocationApiModel {
  const _$ForecastLocationApiModelImpl(this.name, this.region, this.country,
      this.lat, this.lon, this.tzId, this.localtimeEpoch, this.localtime);

  factory _$ForecastLocationApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastLocationApiModelImplFromJson(json);

  @override
  final String? name;
  @override
  final String? region;
  @override
  final String? country;
  @override
  final double? lat;
  @override
  final double? lon;
  @override
  final String? tzId;
  @override
  final int? localtimeEpoch;
  @override
  final String? localtime;

  @override
  String toString() {
    return 'ForecastLocationApiModel(name: $name, region: $region, country: $country, lat: $lat, lon: $lon, tzId: $tzId, localtimeEpoch: $localtimeEpoch, localtime: $localtime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastLocationApiModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.tzId, tzId) || other.tzId == tzId) &&
            (identical(other.localtimeEpoch, localtimeEpoch) ||
                other.localtimeEpoch == localtimeEpoch) &&
            (identical(other.localtime, localtime) ||
                other.localtime == localtime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, region, country, lat, lon,
      tzId, localtimeEpoch, localtime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastLocationApiModelImplCopyWith<_$ForecastLocationApiModelImpl>
      get copyWith => __$$ForecastLocationApiModelImplCopyWithImpl<
          _$ForecastLocationApiModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastLocationApiModelImplToJson(
      this,
    );
  }
}

abstract class _ForecastLocationApiModel implements ForecastLocationApiModel {
  const factory _ForecastLocationApiModel(
      final String? name,
      final String? region,
      final String? country,
      final double? lat,
      final double? lon,
      final String? tzId,
      final int? localtimeEpoch,
      final String? localtime) = _$ForecastLocationApiModelImpl;

  factory _ForecastLocationApiModel.fromJson(Map<String, dynamic> json) =
      _$ForecastLocationApiModelImpl.fromJson;

  @override
  String? get name;
  @override
  String? get region;
  @override
  String? get country;
  @override
  double? get lat;
  @override
  double? get lon;
  @override
  String? get tzId;
  @override
  int? get localtimeEpoch;
  @override
  String? get localtime;
  @override
  @JsonKey(ignore: true)
  _$$ForecastLocationApiModelImplCopyWith<_$ForecastLocationApiModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
