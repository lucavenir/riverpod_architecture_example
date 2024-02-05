// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_day.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForecastDayModel _$ForecastDayModelFromJson(Map<String, dynamic> json) {
  return _ForecastDayModel.fromJson(json);
}

/// @nodoc
mixin _$ForecastDayModel {
  DateTime get date => throw _privateConstructorUsedError;
  DayModel get day => throw _privateConstructorUsedError;
  int? get dateEpoch => throw _privateConstructorUsedError;
  AstroModel? get astro => throw _privateConstructorUsedError;
  List<HourModel>? get hour => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastDayModelCopyWith<ForecastDayModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastDayModelCopyWith<$Res> {
  factory $ForecastDayModelCopyWith(
          ForecastDayModel value, $Res Function(ForecastDayModel) then) =
      _$ForecastDayModelCopyWithImpl<$Res, ForecastDayModel>;
  @useResult
  $Res call(
      {DateTime date,
      DayModel day,
      int? dateEpoch,
      AstroModel? astro,
      List<HourModel>? hour});

  $DayModelCopyWith<$Res> get day;
  $AstroModelCopyWith<$Res>? get astro;
}

/// @nodoc
class _$ForecastDayModelCopyWithImpl<$Res, $Val extends ForecastDayModel>
    implements $ForecastDayModelCopyWith<$Res> {
  _$ForecastDayModelCopyWithImpl(this._value, this._then);

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
              as DayModel,
      dateEpoch: freezed == dateEpoch
          ? _value.dateEpoch
          : dateEpoch // ignore: cast_nullable_to_non_nullable
              as int?,
      astro: freezed == astro
          ? _value.astro
          : astro // ignore: cast_nullable_to_non_nullable
              as AstroModel?,
      hour: freezed == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as List<HourModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DayModelCopyWith<$Res> get day {
    return $DayModelCopyWith<$Res>(_value.day, (value) {
      return _then(_value.copyWith(day: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AstroModelCopyWith<$Res>? get astro {
    if (_value.astro == null) {
      return null;
    }

    return $AstroModelCopyWith<$Res>(_value.astro!, (value) {
      return _then(_value.copyWith(astro: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForecastDayModelImplCopyWith<$Res>
    implements $ForecastDayModelCopyWith<$Res> {
  factory _$$ForecastDayModelImplCopyWith(_$ForecastDayModelImpl value,
          $Res Function(_$ForecastDayModelImpl) then) =
      __$$ForecastDayModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date,
      DayModel day,
      int? dateEpoch,
      AstroModel? astro,
      List<HourModel>? hour});

  @override
  $DayModelCopyWith<$Res> get day;
  @override
  $AstroModelCopyWith<$Res>? get astro;
}

/// @nodoc
class __$$ForecastDayModelImplCopyWithImpl<$Res>
    extends _$ForecastDayModelCopyWithImpl<$Res, _$ForecastDayModelImpl>
    implements _$$ForecastDayModelImplCopyWith<$Res> {
  __$$ForecastDayModelImplCopyWithImpl(_$ForecastDayModelImpl _value,
      $Res Function(_$ForecastDayModelImpl) _then)
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
    return _then(_$ForecastDayModelImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DayModel,
      dateEpoch: freezed == dateEpoch
          ? _value.dateEpoch
          : dateEpoch // ignore: cast_nullable_to_non_nullable
              as int?,
      astro: freezed == astro
          ? _value.astro
          : astro // ignore: cast_nullable_to_non_nullable
              as AstroModel?,
      hour: freezed == hour
          ? _value._hour
          : hour // ignore: cast_nullable_to_non_nullable
              as List<HourModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastDayModelImpl implements _ForecastDayModel {
  const _$ForecastDayModelImpl(
      {required this.date,
      required this.day,
      this.dateEpoch,
      this.astro,
      final List<HourModel>? hour})
      : _hour = hour;

  factory _$ForecastDayModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastDayModelImplFromJson(json);

  @override
  final DateTime date;
  @override
  final DayModel day;
  @override
  final int? dateEpoch;
  @override
  final AstroModel? astro;
  final List<HourModel>? _hour;
  @override
  List<HourModel>? get hour {
    final value = _hour;
    if (value == null) return null;
    if (_hour is EqualUnmodifiableListView) return _hour;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ForecastDayModel(date: $date, day: $day, dateEpoch: $dateEpoch, astro: $astro, hour: $hour)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastDayModelImpl &&
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
  _$$ForecastDayModelImplCopyWith<_$ForecastDayModelImpl> get copyWith =>
      __$$ForecastDayModelImplCopyWithImpl<_$ForecastDayModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastDayModelImplToJson(
      this,
    );
  }
}

abstract class _ForecastDayModel implements ForecastDayModel {
  const factory _ForecastDayModel(
      {required final DateTime date,
      required final DayModel day,
      final int? dateEpoch,
      final AstroModel? astro,
      final List<HourModel>? hour}) = _$ForecastDayModelImpl;

  factory _ForecastDayModel.fromJson(Map<String, dynamic> json) =
      _$ForecastDayModelImpl.fromJson;

  @override
  DateTime get date;
  @override
  DayModel get day;
  @override
  int? get dateEpoch;
  @override
  AstroModel? get astro;
  @override
  List<HourModel>? get hour;
  @override
  @JsonKey(ignore: true)
  _$$ForecastDayModelImplCopyWith<_$ForecastDayModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
