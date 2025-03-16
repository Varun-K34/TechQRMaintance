// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand_and_model_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BrandAndModelEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBrand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBrand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBrand,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBrand value) getBrand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetBrand value)? getBrand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBrand value)? getBrand,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandAndModelEventCopyWith<$Res> {
  factory $BrandAndModelEventCopyWith(
          BrandAndModelEvent value, $Res Function(BrandAndModelEvent) then) =
      _$BrandAndModelEventCopyWithImpl<$Res, BrandAndModelEvent>;
}

/// @nodoc
class _$BrandAndModelEventCopyWithImpl<$Res, $Val extends BrandAndModelEvent>
    implements $BrandAndModelEventCopyWith<$Res> {
  _$BrandAndModelEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BrandAndModelEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetBrandImplCopyWith<$Res> {
  factory _$$GetBrandImplCopyWith(
          _$GetBrandImpl value, $Res Function(_$GetBrandImpl) then) =
      __$$GetBrandImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetBrandImplCopyWithImpl<$Res>
    extends _$BrandAndModelEventCopyWithImpl<$Res, _$GetBrandImpl>
    implements _$$GetBrandImplCopyWith<$Res> {
  __$$GetBrandImplCopyWithImpl(
      _$GetBrandImpl _value, $Res Function(_$GetBrandImpl) _then)
      : super(_value, _then);

  /// Create a copy of BrandAndModelEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetBrandImpl implements GetBrand {
  const _$GetBrandImpl();

  @override
  String toString() {
    return 'BrandAndModelEvent.getBrand()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetBrandImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBrand,
  }) {
    return getBrand();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBrand,
  }) {
    return getBrand?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBrand,
    required TResult orElse(),
  }) {
    if (getBrand != null) {
      return getBrand();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBrand value) getBrand,
  }) {
    return getBrand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetBrand value)? getBrand,
  }) {
    return getBrand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBrand value)? getBrand,
    required TResult orElse(),
  }) {
    if (getBrand != null) {
      return getBrand(this);
    }
    return orElse();
  }
}

abstract class GetBrand implements BrandAndModelEvent {
  const factory GetBrand() = _$GetBrandImpl;
}

/// @nodoc
mixin _$BrandAndModelState {
  List<BrandModel> get brandList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isFailure => throw _privateConstructorUsedError;

  /// Create a copy of BrandAndModelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BrandAndModelStateCopyWith<BrandAndModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandAndModelStateCopyWith<$Res> {
  factory $BrandAndModelStateCopyWith(
          BrandAndModelState value, $Res Function(BrandAndModelState) then) =
      _$BrandAndModelStateCopyWithImpl<$Res, BrandAndModelState>;
  @useResult
  $Res call({List<BrandModel> brandList, bool isLoading, bool isFailure});
}

/// @nodoc
class _$BrandAndModelStateCopyWithImpl<$Res, $Val extends BrandAndModelState>
    implements $BrandAndModelStateCopyWith<$Res> {
  _$BrandAndModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BrandAndModelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brandList = null,
    Object? isLoading = null,
    Object? isFailure = null,
  }) {
    return _then(_value.copyWith(
      brandList: null == brandList
          ? _value.brandList
          : brandList // ignore: cast_nullable_to_non_nullable
              as List<BrandModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailure: null == isFailure
          ? _value.isFailure
          : isFailure // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandStateImplCopyWith<$Res>
    implements $BrandAndModelStateCopyWith<$Res> {
  factory _$$BrandStateImplCopyWith(
          _$BrandStateImpl value, $Res Function(_$BrandStateImpl) then) =
      __$$BrandStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BrandModel> brandList, bool isLoading, bool isFailure});
}

/// @nodoc
class __$$BrandStateImplCopyWithImpl<$Res>
    extends _$BrandAndModelStateCopyWithImpl<$Res, _$BrandStateImpl>
    implements _$$BrandStateImplCopyWith<$Res> {
  __$$BrandStateImplCopyWithImpl(
      _$BrandStateImpl _value, $Res Function(_$BrandStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BrandAndModelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brandList = null,
    Object? isLoading = null,
    Object? isFailure = null,
  }) {
    return _then(_$BrandStateImpl(
      brandList: null == brandList
          ? _value._brandList
          : brandList // ignore: cast_nullable_to_non_nullable
              as List<BrandModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailure: null == isFailure
          ? _value.isFailure
          : isFailure // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BrandStateImpl implements _BrandState {
  const _$BrandStateImpl(
      {required final List<BrandModel> brandList,
      required this.isLoading,
      required this.isFailure})
      : _brandList = brandList;

  final List<BrandModel> _brandList;
  @override
  List<BrandModel> get brandList {
    if (_brandList is EqualUnmodifiableListView) return _brandList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_brandList);
  }

  @override
  final bool isLoading;
  @override
  final bool isFailure;

  @override
  String toString() {
    return 'BrandAndModelState(brandList: $brandList, isLoading: $isLoading, isFailure: $isFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandStateImpl &&
            const DeepCollectionEquality()
                .equals(other._brandList, _brandList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isFailure, isFailure) ||
                other.isFailure == isFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_brandList), isLoading, isFailure);

  /// Create a copy of BrandAndModelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandStateImplCopyWith<_$BrandStateImpl> get copyWith =>
      __$$BrandStateImplCopyWithImpl<_$BrandStateImpl>(this, _$identity);
}

abstract class _BrandState implements BrandAndModelState {
  const factory _BrandState(
      {required final List<BrandModel> brandList,
      required final bool isLoading,
      required final bool isFailure}) = _$BrandStateImpl;

  @override
  List<BrandModel> get brandList;
  @override
  bool get isLoading;
  @override
  bool get isFailure;

  /// Create a copy of BrandAndModelState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BrandStateImplCopyWith<_$BrandStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
