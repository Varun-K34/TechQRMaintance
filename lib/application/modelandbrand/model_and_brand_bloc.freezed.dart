// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_and_brand_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ModelAndBrandEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getModel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetModel value) getModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetModel value)? getModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetModel value)? getModel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelAndBrandEventCopyWith<$Res> {
  factory $ModelAndBrandEventCopyWith(
          ModelAndBrandEvent value, $Res Function(ModelAndBrandEvent) then) =
      _$ModelAndBrandEventCopyWithImpl<$Res, ModelAndBrandEvent>;
}

/// @nodoc
class _$ModelAndBrandEventCopyWithImpl<$Res, $Val extends ModelAndBrandEvent>
    implements $ModelAndBrandEventCopyWith<$Res> {
  _$ModelAndBrandEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModelAndBrandEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetModelImplCopyWith<$Res> {
  factory _$$GetModelImplCopyWith(
          _$GetModelImpl value, $Res Function(_$GetModelImpl) then) =
      __$$GetModelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetModelImplCopyWithImpl<$Res>
    extends _$ModelAndBrandEventCopyWithImpl<$Res, _$GetModelImpl>
    implements _$$GetModelImplCopyWith<$Res> {
  __$$GetModelImplCopyWithImpl(
      _$GetModelImpl _value, $Res Function(_$GetModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModelAndBrandEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetModelImpl implements GetModel {
  const _$GetModelImpl();

  @override
  String toString() {
    return 'ModelAndBrandEvent.getModel()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetModelImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getModel,
  }) {
    return getModel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getModel,
  }) {
    return getModel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getModel,
    required TResult orElse(),
  }) {
    if (getModel != null) {
      return getModel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetModel value) getModel,
  }) {
    return getModel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetModel value)? getModel,
  }) {
    return getModel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetModel value)? getModel,
    required TResult orElse(),
  }) {
    if (getModel != null) {
      return getModel(this);
    }
    return orElse();
  }
}

abstract class GetModel implements ModelAndBrandEvent {
  const factory GetModel() = _$GetModelImpl;
}

/// @nodoc
mixin _$ModelAndBrandState {
  List<DeviceModelsModel> get modelList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isFailure => throw _privateConstructorUsedError;

  /// Create a copy of ModelAndBrandState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModelAndBrandStateCopyWith<ModelAndBrandState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelAndBrandStateCopyWith<$Res> {
  factory $ModelAndBrandStateCopyWith(
          ModelAndBrandState value, $Res Function(ModelAndBrandState) then) =
      _$ModelAndBrandStateCopyWithImpl<$Res, ModelAndBrandState>;
  @useResult
  $Res call(
      {List<DeviceModelsModel> modelList, bool isLoading, bool isFailure});
}

/// @nodoc
class _$ModelAndBrandStateCopyWithImpl<$Res, $Val extends ModelAndBrandState>
    implements $ModelAndBrandStateCopyWith<$Res> {
  _$ModelAndBrandStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModelAndBrandState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modelList = null,
    Object? isLoading = null,
    Object? isFailure = null,
  }) {
    return _then(_value.copyWith(
      modelList: null == modelList
          ? _value.modelList
          : modelList // ignore: cast_nullable_to_non_nullable
              as List<DeviceModelsModel>,
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
    implements $ModelAndBrandStateCopyWith<$Res> {
  factory _$$BrandStateImplCopyWith(
          _$BrandStateImpl value, $Res Function(_$BrandStateImpl) then) =
      __$$BrandStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DeviceModelsModel> modelList, bool isLoading, bool isFailure});
}

/// @nodoc
class __$$BrandStateImplCopyWithImpl<$Res>
    extends _$ModelAndBrandStateCopyWithImpl<$Res, _$BrandStateImpl>
    implements _$$BrandStateImplCopyWith<$Res> {
  __$$BrandStateImplCopyWithImpl(
      _$BrandStateImpl _value, $Res Function(_$BrandStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModelAndBrandState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modelList = null,
    Object? isLoading = null,
    Object? isFailure = null,
  }) {
    return _then(_$BrandStateImpl(
      modelList: null == modelList
          ? _value._modelList
          : modelList // ignore: cast_nullable_to_non_nullable
              as List<DeviceModelsModel>,
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
      {required final List<DeviceModelsModel> modelList,
      required this.isLoading,
      required this.isFailure})
      : _modelList = modelList;

  final List<DeviceModelsModel> _modelList;
  @override
  List<DeviceModelsModel> get modelList {
    if (_modelList is EqualUnmodifiableListView) return _modelList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_modelList);
  }

  @override
  final bool isLoading;
  @override
  final bool isFailure;

  @override
  String toString() {
    return 'ModelAndBrandState(modelList: $modelList, isLoading: $isLoading, isFailure: $isFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandStateImpl &&
            const DeepCollectionEquality()
                .equals(other._modelList, _modelList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isFailure, isFailure) ||
                other.isFailure == isFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_modelList), isLoading, isFailure);

  /// Create a copy of ModelAndBrandState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandStateImplCopyWith<_$BrandStateImpl> get copyWith =>
      __$$BrandStateImplCopyWithImpl<_$BrandStateImpl>(this, _$identity);
}

abstract class _BrandState implements ModelAndBrandState {
  const factory _BrandState(
      {required final List<DeviceModelsModel> modelList,
      required final bool isLoading,
      required final bool isFailure}) = _$BrandStateImpl;

  @override
  List<DeviceModelsModel> get modelList;
  @override
  bool get isLoading;
  @override
  bool get isFailure;

  /// Create a copy of ModelAndBrandState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BrandStateImplCopyWith<_$BrandStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
