// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inner_astronomy_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InnerAstronomyDto _$InnerAstronomyDtoFromJson(Map<String, dynamic> json) {
  return _InnerAstronomyDto.fromJson(json);
}

/// @nodoc
mixin _$InnerAstronomyDto {
  AstroDto get astro => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InnerAstronomyDtoCopyWith<InnerAstronomyDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InnerAstronomyDtoCopyWith<$Res> {
  factory $InnerAstronomyDtoCopyWith(
          InnerAstronomyDto value, $Res Function(InnerAstronomyDto) then) =
      _$InnerAstronomyDtoCopyWithImpl<$Res, InnerAstronomyDto>;
  @useResult
  $Res call({AstroDto astro});

  $AstroDtoCopyWith<$Res> get astro;
}

/// @nodoc
class _$InnerAstronomyDtoCopyWithImpl<$Res, $Val extends InnerAstronomyDto>
    implements $InnerAstronomyDtoCopyWith<$Res> {
  _$InnerAstronomyDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? astro = null,
  }) {
    return _then(_value.copyWith(
      astro: null == astro
          ? _value.astro
          : astro // ignore: cast_nullable_to_non_nullable
              as AstroDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AstroDtoCopyWith<$Res> get astro {
    return $AstroDtoCopyWith<$Res>(_value.astro, (value) {
      return _then(_value.copyWith(astro: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InnerAstronomyDtoImplCopyWith<$Res>
    implements $InnerAstronomyDtoCopyWith<$Res> {
  factory _$$InnerAstronomyDtoImplCopyWith(_$InnerAstronomyDtoImpl value,
          $Res Function(_$InnerAstronomyDtoImpl) then) =
      __$$InnerAstronomyDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AstroDto astro});

  @override
  $AstroDtoCopyWith<$Res> get astro;
}

/// @nodoc
class __$$InnerAstronomyDtoImplCopyWithImpl<$Res>
    extends _$InnerAstronomyDtoCopyWithImpl<$Res, _$InnerAstronomyDtoImpl>
    implements _$$InnerAstronomyDtoImplCopyWith<$Res> {
  __$$InnerAstronomyDtoImplCopyWithImpl(_$InnerAstronomyDtoImpl _value,
      $Res Function(_$InnerAstronomyDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? astro = null,
  }) {
    return _then(_$InnerAstronomyDtoImpl(
      astro: null == astro
          ? _value.astro
          : astro // ignore: cast_nullable_to_non_nullable
              as AstroDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InnerAstronomyDtoImpl implements _InnerAstronomyDto {
  const _$InnerAstronomyDtoImpl({required this.astro});

  factory _$InnerAstronomyDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InnerAstronomyDtoImplFromJson(json);

  @override
  final AstroDto astro;

  @override
  String toString() {
    return 'InnerAstronomyDto(astro: $astro)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InnerAstronomyDtoImpl &&
            (identical(other.astro, astro) || other.astro == astro));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, astro);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InnerAstronomyDtoImplCopyWith<_$InnerAstronomyDtoImpl> get copyWith =>
      __$$InnerAstronomyDtoImplCopyWithImpl<_$InnerAstronomyDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InnerAstronomyDtoImplToJson(
      this,
    );
  }
}

abstract class _InnerAstronomyDto implements InnerAstronomyDto {
  const factory _InnerAstronomyDto({required final AstroDto astro}) =
      _$InnerAstronomyDtoImpl;

  factory _InnerAstronomyDto.fromJson(Map<String, dynamic> json) =
      _$InnerAstronomyDtoImpl.fromJson;

  @override
  AstroDto get astro;
  @override
  @JsonKey(ignore: true)
  _$$InnerAstronomyDtoImplCopyWith<_$InnerAstronomyDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
