// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'locations.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Locations {
  List<CurrentLocation> get places => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationsCopyWith<Locations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationsCopyWith<$Res> {
  factory $LocationsCopyWith(Locations value, $Res Function(Locations) then) =
      _$LocationsCopyWithImpl<$Res, Locations>;
  @useResult
  $Res call({List<CurrentLocation> places});
}

/// @nodoc
class _$LocationsCopyWithImpl<$Res, $Val extends Locations>
    implements $LocationsCopyWith<$Res> {
  _$LocationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? places = null,
  }) {
    return _then(_value.copyWith(
      places: null == places
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<CurrentLocation>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationsImplCopyWith<$Res>
    implements $LocationsCopyWith<$Res> {
  factory _$$LocationsImplCopyWith(
          _$LocationsImpl value, $Res Function(_$LocationsImpl) then) =
      __$$LocationsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CurrentLocation> places});
}

/// @nodoc
class __$$LocationsImplCopyWithImpl<$Res>
    extends _$LocationsCopyWithImpl<$Res, _$LocationsImpl>
    implements _$$LocationsImplCopyWith<$Res> {
  __$$LocationsImplCopyWithImpl(
      _$LocationsImpl _value, $Res Function(_$LocationsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? places = null,
  }) {
    return _then(_$LocationsImpl(
      places: null == places
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<CurrentLocation>,
    ));
  }
}

/// @nodoc

class _$LocationsImpl implements _Locations {
  const _$LocationsImpl({required final List<CurrentLocation> places})
      : _places = places;

  final List<CurrentLocation> _places;
  @override
  List<CurrentLocation> get places {
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_places);
  }

  @override
  String toString() {
    return 'Locations(places: $places)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationsImpl &&
            const DeepCollectionEquality().equals(other._places, _places));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_places));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationsImplCopyWith<_$LocationsImpl> get copyWith =>
      __$$LocationsImplCopyWithImpl<_$LocationsImpl>(this, _$identity);
}

abstract class _Locations implements Locations {
  const factory _Locations({required final List<CurrentLocation> places}) =
      _$LocationsImpl;

  @override
  List<CurrentLocation> get places;
  @override
  @JsonKey(ignore: true)
  _$$LocationsImplCopyWith<_$LocationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
