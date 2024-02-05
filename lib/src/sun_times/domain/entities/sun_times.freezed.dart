// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sun_times.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SunTimes {
  DateTime get timestamp => throw _privateConstructorUsedError;
  TimeOfDay get sunrise => throw _privateConstructorUsedError;
  TimeOfDay get sunset => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SunTimesCopyWith<SunTimes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SunTimesCopyWith<$Res> {
  factory $SunTimesCopyWith(SunTimes value, $Res Function(SunTimes) then) =
      _$SunTimesCopyWithImpl<$Res, SunTimes>;
  @useResult
  $Res call({DateTime timestamp, TimeOfDay sunrise, TimeOfDay sunset});
}

/// @nodoc
class _$SunTimesCopyWithImpl<$Res, $Val extends SunTimes>
    implements $SunTimesCopyWith<$Res> {
  _$SunTimesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? sunrise = null,
    Object? sunset = null,
  }) {
    return _then(_value.copyWith(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SunTimesImplCopyWith<$Res>
    implements $SunTimesCopyWith<$Res> {
  factory _$$SunTimesImplCopyWith(
          _$SunTimesImpl value, $Res Function(_$SunTimesImpl) then) =
      __$$SunTimesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime timestamp, TimeOfDay sunrise, TimeOfDay sunset});
}

/// @nodoc
class __$$SunTimesImplCopyWithImpl<$Res>
    extends _$SunTimesCopyWithImpl<$Res, _$SunTimesImpl>
    implements _$$SunTimesImplCopyWith<$Res> {
  __$$SunTimesImplCopyWithImpl(
      _$SunTimesImpl _value, $Res Function(_$SunTimesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? sunrise = null,
    Object? sunset = null,
  }) {
    return _then(_$SunTimesImpl(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
    ));
  }
}

/// @nodoc

class _$SunTimesImpl extends _SunTimes {
  const _$SunTimesImpl(
      {required this.timestamp, required this.sunrise, required this.sunset})
      : super._();

  @override
  final DateTime timestamp;
  @override
  final TimeOfDay sunrise;
  @override
  final TimeOfDay sunset;

  @override
  String toString() {
    return 'SunTimes(timestamp: $timestamp, sunrise: $sunrise, sunset: $sunset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SunTimesImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timestamp, sunrise, sunset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SunTimesImplCopyWith<_$SunTimesImpl> get copyWith =>
      __$$SunTimesImplCopyWithImpl<_$SunTimesImpl>(this, _$identity);
}

abstract class _SunTimes extends SunTimes {
  const factory _SunTimes(
      {required final DateTime timestamp,
      required final TimeOfDay sunrise,
      required final TimeOfDay sunset}) = _$SunTimesImpl;
  const _SunTimes._() : super._();

  @override
  DateTime get timestamp;
  @override
  TimeOfDay get sunrise;
  @override
  TimeOfDay get sunset;
  @override
  @JsonKey(ignore: true)
  _$$SunTimesImplCopyWith<_$SunTimesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
