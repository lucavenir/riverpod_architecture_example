// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_day_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForecastDayDto _$ForecastDayDtoFromJson(Map<String, dynamic> json) {
  return _ForecastDayDto.fromJson(json);
}

/// @nodoc
mixin _$ForecastDayDto {
  DateTime get date => throw _privateConstructorUsedError;
  DayDto get day => throw _privateConstructorUsedError;
  int? get dateEpoch => throw _privateConstructorUsedError;
  AstroDto? get astro => throw _privateConstructorUsedError;
  List<HourDto>? get hour => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastDayDtoCopyWith<ForecastDayDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastDayDtoCopyWith<$Res> {
  factory $ForecastDayDtoCopyWith(
          ForecastDayDto value, $Res Function(ForecastDayDto) then) =
      _$ForecastDayDtoCopyWithImpl<$Res, ForecastDayDto>;
  @useResult
  $Res call(
      {DateTime date,
      DayDto day,
      int? dateEpoch,
      AstroDto? astro,
      List<HourDto>? hour});

  $DayDtoCopyWith<$Res> get day;
  $AstroDtoCopyWith<$Res>? get astro;
}

/// @nodoc
class _$ForecastDayDtoCopyWithImpl<$Res, $Val extends ForecastDayDto>
    implements $ForecastDayDtoCopyWith<$Res> {
  _$ForecastDayDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? day = null,
    Object? dateEpoch = freezed,
    Object? astro = freezed,
    Object? hour = freezed,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DayDto,
      dateEpoch: freezed == dateEpoch
          ? _value.dateEpoch
          : dateEpoch // ignore: cast_nullable_to_non_nullable
              as int?,
      astro: freezed == astro
          ? _value.astro
          : astro // ignore: cast_nullable_to_non_nullable
              as AstroDto?,
      hour: freezed == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as List<HourDto>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DayDtoCopyWith<$Res> get day {
    return $DayDtoCopyWith<$Res>(_value.day, (value) {
      return _then(_value.copyWith(day: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AstroDtoCopyWith<$Res>? get astro {
    if (_value.astro == null) {
      return null;
    }

    return $AstroDtoCopyWith<$Res>(_value.astro!, (value) {
      return _then(_value.copyWith(astro: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForecastDayDtoImplCopyWith<$Res>
    implements $ForecastDayDtoCopyWith<$Res> {
  factory _$$ForecastDayDtoImplCopyWith(_$ForecastDayDtoImpl value,
          $Res Function(_$ForecastDayDtoImpl) then) =
      __$$ForecastDayDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date,
      DayDto day,
      int? dateEpoch,
      AstroDto? astro,
      List<HourDto>? hour});

  @override
  $DayDtoCopyWith<$Res> get day;
  @override
  $AstroDtoCopyWith<$Res>? get astro;
}

/// @nodoc
class __$$ForecastDayDtoImplCopyWithImpl<$Res>
    extends _$ForecastDayDtoCopyWithImpl<$Res, _$ForecastDayDtoImpl>
    implements _$$ForecastDayDtoImplCopyWith<$Res> {
  __$$ForecastDayDtoImplCopyWithImpl(
      _$ForecastDayDtoImpl _value, $Res Function(_$ForecastDayDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? day = null,
    Object? dateEpoch = freezed,
    Object? astro = freezed,
    Object? hour = freezed,
  }) {
    return _then(_$ForecastDayDtoImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DayDto,
      dateEpoch: freezed == dateEpoch
          ? _value.dateEpoch
          : dateEpoch // ignore: cast_nullable_to_non_nullable
              as int?,
      astro: freezed == astro
          ? _value.astro
          : astro // ignore: cast_nullable_to_non_nullable
              as AstroDto?,
      hour: freezed == hour
          ? _value._hour
          : hour // ignore: cast_nullable_to_non_nullable
              as List<HourDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastDayDtoImpl implements _ForecastDayDto {
  const _$ForecastDayDtoImpl(
      {required this.date,
      required this.day,
      this.dateEpoch,
      this.astro,
      final List<HourDto>? hour})
      : _hour = hour;

  factory _$ForecastDayDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastDayDtoImplFromJson(json);

  @override
  final DateTime date;
  @override
  final DayDto day;
  @override
  final int? dateEpoch;
  @override
  final AstroDto? astro;
  final List<HourDto>? _hour;
  @override
  List<HourDto>? get hour {
    final value = _hour;
    if (value == null) return null;
    if (_hour is EqualUnmodifiableListView) return _hour;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ForecastDayDto(date: $date, day: $day, dateEpoch: $dateEpoch, astro: $astro, hour: $hour)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastDayDtoImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.dateEpoch, dateEpoch) ||
                other.dateEpoch == dateEpoch) &&
            (identical(other.astro, astro) || other.astro == astro) &&
            const DeepCollectionEquality().equals(other._hour, _hour));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, day, dateEpoch, astro,
      const DeepCollectionEquality().hash(_hour));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastDayDtoImplCopyWith<_$ForecastDayDtoImpl> get copyWith =>
      __$$ForecastDayDtoImplCopyWithImpl<_$ForecastDayDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastDayDtoImplToJson(
      this,
    );
  }
}

abstract class _ForecastDayDto implements ForecastDayDto {
  const factory _ForecastDayDto(
      {required final DateTime date,
      required final DayDto day,
      final int? dateEpoch,
      final AstroDto? astro,
      final List<HourDto>? hour}) = _$ForecastDayDtoImpl;

  factory _ForecastDayDto.fromJson(Map<String, dynamic> json) =
      _$ForecastDayDtoImpl.fromJson;

  @override
  DateTime get date;
  @override
  DayDto get day;
  @override
  int? get dateEpoch;
  @override
  AstroDto? get astro;
  @override
  List<HourDto>? get hour;
  @override
  @JsonKey(ignore: true)
  _$$ForecastDayDtoImplCopyWith<_$ForecastDayDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
