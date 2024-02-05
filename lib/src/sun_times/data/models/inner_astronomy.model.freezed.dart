// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inner_astronomy.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InnerAstronomyModel _$InnerAstronomyModelFromJson(Map<String, dynamic> json) {
  return _InnerAstronomyModel.fromJson(json);
}

/// @nodoc
mixin _$InnerAstronomyModel {
  AstroModel get astro => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InnerAstronomyModelCopyWith<InnerAstronomyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InnerAstronomyModelCopyWith<$Res> {
  factory $InnerAstronomyModelCopyWith(
          InnerAstronomyModel value, $Res Function(InnerAstronomyModel) then) =
      _$InnerAstronomyModelCopyWithImpl<$Res, InnerAstronomyModel>;
  @useResult
  $Res call({AstroModel astro});

  $AstroModelCopyWith<$Res> get astro;
}

/// @nodoc
class _$InnerAstronomyModelCopyWithImpl<$Res, $Val extends InnerAstronomyModel>
    implements $InnerAstronomyModelCopyWith<$Res> {
  _$InnerAstronomyModelCopyWithImpl(this._value, this._then);

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
              as AstroModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AstroModelCopyWith<$Res> get astro {
    return $AstroModelCopyWith<$Res>(_value.astro, (value) {
      return _then(_value.copyWith(astro: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InnerAstronomyModelImplCopyWith<$Res>
    implements $InnerAstronomyModelCopyWith<$Res> {
  factory _$$InnerAstronomyModelImplCopyWith(_$InnerAstronomyModelImpl value,
          $Res Function(_$InnerAstronomyModelImpl) then) =
      __$$InnerAstronomyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AstroModel astro});

  @override
  $AstroModelCopyWith<$Res> get astro;
}

/// @nodoc
class __$$InnerAstronomyModelImplCopyWithImpl<$Res>
    extends _$InnerAstronomyModelCopyWithImpl<$Res, _$InnerAstronomyModelImpl>
    implements _$$InnerAstronomyModelImplCopyWith<$Res> {
  __$$InnerAstronomyModelImplCopyWithImpl(_$InnerAstronomyModelImpl _value,
      $Res Function(_$InnerAstronomyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? astro = null,
  }) {
    return _then(_$InnerAstronomyModelImpl(
      astro: null == astro
          ? _value.astro
          : astro // ignore: cast_nullable_to_non_nullable
              as AstroModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InnerAstronomyModelImpl implements _InnerAstronomyModel {
  const _$InnerAstronomyModelImpl({required this.astro});

  factory _$InnerAstronomyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InnerAstronomyModelImplFromJson(json);

  @override
  final AstroModel astro;

  @override
  String toString() {
    return 'InnerAstronomyModel(astro: $astro)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InnerAstronomyModelImpl &&
            (identical(other.astro, astro) || other.astro == astro));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, astro);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InnerAstronomyModelImplCopyWith<_$InnerAstronomyModelImpl> get copyWith =>
      __$$InnerAstronomyModelImplCopyWithImpl<_$InnerAstronomyModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InnerAstronomyModelImplToJson(
      this,
    );
  }
}

abstract class _InnerAstronomyModel implements InnerAstronomyModel {
  const factory _InnerAstronomyModel({required final AstroModel astro}) =
      _$InnerAstronomyModelImpl;

  factory _InnerAstronomyModel.fromJson(Map<String, dynamic> json) =
      _$InnerAstronomyModelImpl.fromJson;

  @override
  AstroModel get astro;
  @override
  @JsonKey(ignore: true)
  _$$InnerAstronomyModelImplCopyWith<_$InnerAstronomyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
