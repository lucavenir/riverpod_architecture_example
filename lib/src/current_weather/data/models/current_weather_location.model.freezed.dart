// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_weather_location.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrentWeatherLocationModel _$CurrentWeatherLocationModelFromJson(
    Map<String, dynamic> json) {
  return _CurrentWeatherLocationModel.fromJson(json);
}

/// @nodoc
mixin _$CurrentWeatherLocationModel {
  String get name => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  double? get lat => throw _privateConstructorUsedError;
  double? get lon => throw _privateConstructorUsedError;
  String? get tzId => throw _privateConstructorUsedError;
  int? get localtimeepoch => throw _privateConstructorUsedError;
  String? get localtime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentWeatherLocationModelCopyWith<CurrentWeatherLocationModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWeatherLocationModelCopyWith<$Res> {
  factory $CurrentWeatherLocationModelCopyWith(
          CurrentWeatherLocationModel value,
          $Res Function(CurrentWeatherLocationModel) then) =
      _$CurrentWeatherLocationModelCopyWithImpl<$Res,
          CurrentWeatherLocationModel>;
  @useResult
  $Res call(
      {String name,
      String? region,
      String? country,
      double? lat,
      double? lon,
      String? tzId,
      int? localtimeepoch,
      String? localtime});
}

/// @nodoc
class _$CurrentWeatherLocationModelCopyWithImpl<$Res,
        $Val extends CurrentWeatherLocationModel>
    implements $CurrentWeatherLocationModelCopyWith<$Res> {
  _$CurrentWeatherLocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? region = freezed,
    Object? country = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
    Object? tzId = freezed,
    Object? localtimeepoch = freezed,
    Object? localtime = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
      localtimeepoch: freezed == localtimeepoch
          ? _value.localtimeepoch
          : localtimeepoch // ignore: cast_nullable_to_non_nullable
              as int?,
      localtime: freezed == localtime
          ? _value.localtime
          : localtime // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentWeatherLocationModelImplCopyWith<$Res>
    implements $CurrentWeatherLocationModelCopyWith<$Res> {
  factory _$$CurrentWeatherLocationModelImplCopyWith(
          _$CurrentWeatherLocationModelImpl value,
          $Res Function(_$CurrentWeatherLocationModelImpl) then) =
      __$$CurrentWeatherLocationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String? region,
      String? country,
      double? lat,
      double? lon,
      String? tzId,
      int? localtimeepoch,
      String? localtime});
}

/// @nodoc
class __$$CurrentWeatherLocationModelImplCopyWithImpl<$Res>
    extends _$CurrentWeatherLocationModelCopyWithImpl<$Res,
        _$CurrentWeatherLocationModelImpl>
    implements _$$CurrentWeatherLocationModelImplCopyWith<$Res> {
  __$$CurrentWeatherLocationModelImplCopyWithImpl(
      _$CurrentWeatherLocationModelImpl _value,
      $Res Function(_$CurrentWeatherLocationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? region = freezed,
    Object? country = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
    Object? tzId = freezed,
    Object? localtimeepoch = freezed,
    Object? localtime = freezed,
  }) {
    return _then(_$CurrentWeatherLocationModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
      localtimeepoch: freezed == localtimeepoch
          ? _value.localtimeepoch
          : localtimeepoch // ignore: cast_nullable_to_non_nullable
              as int?,
      localtime: freezed == localtime
          ? _value.localtime
          : localtime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentWeatherLocationModelImpl
    implements _CurrentWeatherLocationModel {
  const _$CurrentWeatherLocationModelImpl(
      {required this.name,
      this.region,
      this.country,
      this.lat,
      this.lon,
      this.tzId,
      this.localtimeepoch,
      this.localtime});

  factory _$CurrentWeatherLocationModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CurrentWeatherLocationModelImplFromJson(json);

  @override
  final String name;
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
  final int? localtimeepoch;
  @override
  final String? localtime;

  @override
  String toString() {
    return 'CurrentWeatherLocationModel(name: $name, region: $region, country: $country, lat: $lat, lon: $lon, tzId: $tzId, localtimeepoch: $localtimeepoch, localtime: $localtime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentWeatherLocationModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.tzId, tzId) || other.tzId == tzId) &&
            (identical(other.localtimeepoch, localtimeepoch) ||
                other.localtimeepoch == localtimeepoch) &&
            (identical(other.localtime, localtime) ||
                other.localtime == localtime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, region, country, lat, lon,
      tzId, localtimeepoch, localtime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentWeatherLocationModelImplCopyWith<_$CurrentWeatherLocationModelImpl>
      get copyWith => __$$CurrentWeatherLocationModelImplCopyWithImpl<
          _$CurrentWeatherLocationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentWeatherLocationModelImplToJson(
      this,
    );
  }
}

abstract class _CurrentWeatherLocationModel
    implements CurrentWeatherLocationModel {
  const factory _CurrentWeatherLocationModel(
      {required final String name,
      final String? region,
      final String? country,
      final double? lat,
      final double? lon,
      final String? tzId,
      final int? localtimeepoch,
      final String? localtime}) = _$CurrentWeatherLocationModelImpl;

  factory _CurrentWeatherLocationModel.fromJson(Map<String, dynamic> json) =
      _$CurrentWeatherLocationModelImpl.fromJson;

  @override
  String get name;
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
  int? get localtimeepoch;
  @override
  String? get localtime;
  @override
  @JsonKey(ignore: true)
  _$$CurrentWeatherLocationModelImplCopyWith<_$CurrentWeatherLocationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
