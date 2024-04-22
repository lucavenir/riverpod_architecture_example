// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_day.api.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForecastDayApiModel _$ForecastDayApiModelFromJson(Map<String, dynamic> json) {
  return _ForecastDayApiModel.fromJson(json);
}

/// @nodoc
mixin _$ForecastDayApiModel {
  DateTime get date => throw _privateConstructorUsedError;
  DayApiModel get day => throw _privateConstructorUsedError;
  int? get dateEpoch => throw _privateConstructorUsedError;
  AstroApiModel? get astro => throw _privateConstructorUsedError;
  List<HourApiModel>? get hour => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastDayApiModelCopyWith<ForecastDayApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastDayApiModelCopyWith<$Res> {
  factory $ForecastDayApiModelCopyWith(
          ForecastDayApiModel value, $Res Function(ForecastDayApiModel) then) =
      _$ForecastDayApiModelCopyWithImpl<$Res, ForecastDayApiModel>;
  @useResult
  $Res call(
      {DateTime date,
      DayApiModel day,
      int? dateEpoch,
      AstroApiModel? astro,
      List<HourApiModel>? hour});

  $DayApiModelCopyWith<$Res> get day;
  $AstroApiModelCopyWith<$Res>? get astro;
}

/// @nodoc
class _$ForecastDayApiModelCopyWithImpl<$Res, $Val extends ForecastDayApiModel>
    implements $ForecastDayApiModelCopyWith<$Res> {
  _$ForecastDayApiModelCopyWithImpl(this._value, this._then);

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
              as DayApiModel,
      dateEpoch: freezed == dateEpoch
          ? _value.dateEpoch
          : dateEpoch // ignore: cast_nullable_to_non_nullable
              as int?,
      astro: freezed == astro
          ? _value.astro
          : astro // ignore: cast_nullable_to_non_nullable
              as AstroApiModel?,
      hour: freezed == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as List<HourApiModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DayApiModelCopyWith<$Res> get day {
    return $DayApiModelCopyWith<$Res>(_value.day, (value) {
      return _then(_value.copyWith(day: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AstroApiModelCopyWith<$Res>? get astro {
    if (_value.astro == null) {
      return null;
    }

    return $AstroApiModelCopyWith<$Res>(_value.astro!, (value) {
      return _then(_value.copyWith(astro: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForecastDayApiModelImplCopyWith<$Res>
    implements $ForecastDayApiModelCopyWith<$Res> {
  factory _$$ForecastDayApiModelImplCopyWith(_$ForecastDayApiModelImpl value,
          $Res Function(_$ForecastDayApiModelImpl) then) =
      __$$ForecastDayApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date,
      DayApiModel day,
      int? dateEpoch,
      AstroApiModel? astro,
      List<HourApiModel>? hour});

  @override
  $DayApiModelCopyWith<$Res> get day;
  @override
  $AstroApiModelCopyWith<$Res>? get astro;
}

/// @nodoc
class __$$ForecastDayApiModelImplCopyWithImpl<$Res>
    extends _$ForecastDayApiModelCopyWithImpl<$Res, _$ForecastDayApiModelImpl>
    implements _$$ForecastDayApiModelImplCopyWith<$Res> {
  __$$ForecastDayApiModelImplCopyWithImpl(_$ForecastDayApiModelImpl _value,
      $Res Function(_$ForecastDayApiModelImpl) _then)
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
    return _then(_$ForecastDayApiModelImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DayApiModel,
      dateEpoch: freezed == dateEpoch
          ? _value.dateEpoch
          : dateEpoch // ignore: cast_nullable_to_non_nullable
              as int?,
      astro: freezed == astro
          ? _value.astro
          : astro // ignore: cast_nullable_to_non_nullable
              as AstroApiModel?,
      hour: freezed == hour
          ? _value._hour
          : hour // ignore: cast_nullable_to_non_nullable
              as List<HourApiModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastDayApiModelImpl implements _ForecastDayApiModel {
  const _$ForecastDayApiModelImpl(
      {required this.date,
      required this.day,
      this.dateEpoch,
      this.astro,
      final List<HourApiModel>? hour})
      : _hour = hour;

  factory _$ForecastDayApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastDayApiModelImplFromJson(json);

  @override
  final DateTime date;
  @override
  final DayApiModel day;
  @override
  final int? dateEpoch;
  @override
  final AstroApiModel? astro;
  final List<HourApiModel>? _hour;
  @override
  List<HourApiModel>? get hour {
    final value = _hour;
    if (value == null) return null;
    if (_hour is EqualUnmodifiableListView) return _hour;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ForecastDayApiModel(date: $date, day: $day, dateEpoch: $dateEpoch, astro: $astro, hour: $hour)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastDayApiModelImpl &&
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
  _$$ForecastDayApiModelImplCopyWith<_$ForecastDayApiModelImpl> get copyWith =>
      __$$ForecastDayApiModelImplCopyWithImpl<_$ForecastDayApiModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastDayApiModelImplToJson(
      this,
    );
  }
}

abstract class _ForecastDayApiModel implements ForecastDayApiModel {
  const factory _ForecastDayApiModel(
      {required final DateTime date,
      required final DayApiModel day,
      final int? dateEpoch,
      final AstroApiModel? astro,
      final List<HourApiModel>? hour}) = _$ForecastDayApiModelImpl;

  factory _ForecastDayApiModel.fromJson(Map<String, dynamic> json) =
      _$ForecastDayApiModelImpl.fromJson;

  @override
  DateTime get date;
  @override
  DayApiModel get day;
  @override
  int? get dateEpoch;
  @override
  AstroApiModel? get astro;
  @override
  List<HourApiModel>? get hour;
  @override
  @JsonKey(ignore: true)
  _$$ForecastDayApiModelImplCopyWith<_$ForecastDayApiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
