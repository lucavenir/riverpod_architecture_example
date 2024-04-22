// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inner_astronomy.api.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InnerAstronomyApiModel _$InnerAstronomyApiModelFromJson(
    Map<String, dynamic> json) {
  return _InnerAstronomyApiModel.fromJson(json);
}

/// @nodoc
mixin _$InnerAstronomyApiModel {
  AstroApiModel get astro => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InnerAstronomyApiModelCopyWith<InnerAstronomyApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InnerAstronomyApiModelCopyWith<$Res> {
  factory $InnerAstronomyApiModelCopyWith(InnerAstronomyApiModel value,
          $Res Function(InnerAstronomyApiModel) then) =
      _$InnerAstronomyApiModelCopyWithImpl<$Res, InnerAstronomyApiModel>;
  @useResult
  $Res call({AstroApiModel astro});

  $AstroApiModelCopyWith<$Res> get astro;
}

/// @nodoc
class _$InnerAstronomyApiModelCopyWithImpl<$Res,
        $Val extends InnerAstronomyApiModel>
    implements $InnerAstronomyApiModelCopyWith<$Res> {
  _$InnerAstronomyApiModelCopyWithImpl(this._value, this._then);

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
              as AstroApiModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AstroApiModelCopyWith<$Res> get astro {
    return $AstroApiModelCopyWith<$Res>(_value.astro, (value) {
      return _then(_value.copyWith(astro: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InnerAstronomyApiModelImplCopyWith<$Res>
    implements $InnerAstronomyApiModelCopyWith<$Res> {
  factory _$$InnerAstronomyApiModelImplCopyWith(
          _$InnerAstronomyApiModelImpl value,
          $Res Function(_$InnerAstronomyApiModelImpl) then) =
      __$$InnerAstronomyApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AstroApiModel astro});

  @override
  $AstroApiModelCopyWith<$Res> get astro;
}

/// @nodoc
class __$$InnerAstronomyApiModelImplCopyWithImpl<$Res>
    extends _$InnerAstronomyApiModelCopyWithImpl<$Res,
        _$InnerAstronomyApiModelImpl>
    implements _$$InnerAstronomyApiModelImplCopyWith<$Res> {
  __$$InnerAstronomyApiModelImplCopyWithImpl(
      _$InnerAstronomyApiModelImpl _value,
      $Res Function(_$InnerAstronomyApiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? astro = null,
  }) {
    return _then(_$InnerAstronomyApiModelImpl(
      astro: null == astro
          ? _value.astro
          : astro // ignore: cast_nullable_to_non_nullable
              as AstroApiModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InnerAstronomyApiModelImpl implements _InnerAstronomyApiModel {
  const _$InnerAstronomyApiModelImpl({required this.astro});

  factory _$InnerAstronomyApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InnerAstronomyApiModelImplFromJson(json);

  @override
  final AstroApiModel astro;

  @override
  String toString() {
    return 'InnerAstronomyApiModel(astro: $astro)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InnerAstronomyApiModelImpl &&
            (identical(other.astro, astro) || other.astro == astro));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, astro);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InnerAstronomyApiModelImplCopyWith<_$InnerAstronomyApiModelImpl>
      get copyWith => __$$InnerAstronomyApiModelImplCopyWithImpl<
          _$InnerAstronomyApiModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InnerAstronomyApiModelImplToJson(
      this,
    );
  }
}

abstract class _InnerAstronomyApiModel implements InnerAstronomyApiModel {
  const factory _InnerAstronomyApiModel({required final AstroApiModel astro}) =
      _$InnerAstronomyApiModelImpl;

  factory _InnerAstronomyApiModel.fromJson(Map<String, dynamic> json) =
      _$InnerAstronomyApiModelImpl.fromJson;

  @override
  AstroApiModel get astro;
  @override
  @JsonKey(ignore: true)
  _$$InnerAstronomyApiModelImplCopyWith<_$InnerAstronomyApiModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
