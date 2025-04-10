// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'area_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AreaEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getArea,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getArea,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getArea,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetArea value) getArea,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetArea value)? getArea,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetArea value)? getArea,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaEventCopyWith<$Res> {
  factory $AreaEventCopyWith(AreaEvent value, $Res Function(AreaEvent) then) =
      _$AreaEventCopyWithImpl<$Res, AreaEvent>;
}

/// @nodoc
class _$AreaEventCopyWithImpl<$Res, $Val extends AreaEvent>
    implements $AreaEventCopyWith<$Res> {
  _$AreaEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AreaEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetAreaImplCopyWith<$Res> {
  factory _$$GetAreaImplCopyWith(
          _$GetAreaImpl value, $Res Function(_$GetAreaImpl) then) =
      __$$GetAreaImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAreaImplCopyWithImpl<$Res>
    extends _$AreaEventCopyWithImpl<$Res, _$GetAreaImpl>
    implements _$$GetAreaImplCopyWith<$Res> {
  __$$GetAreaImplCopyWithImpl(
      _$GetAreaImpl _value, $Res Function(_$GetAreaImpl) _then)
      : super(_value, _then);

  /// Create a copy of AreaEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetAreaImpl implements GetArea {
  const _$GetAreaImpl();

  @override
  String toString() {
    return 'AreaEvent.getArea()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAreaImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getArea,
  }) {
    return getArea();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getArea,
  }) {
    return getArea?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getArea,
    required TResult orElse(),
  }) {
    if (getArea != null) {
      return getArea();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetArea value) getArea,
  }) {
    return getArea(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetArea value)? getArea,
  }) {
    return getArea?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetArea value)? getArea,
    required TResult orElse(),
  }) {
    if (getArea != null) {
      return getArea(this);
    }
    return orElse();
  }
}

abstract class GetArea implements AreaEvent {
  const factory GetArea() = _$GetAreaImpl;
}

/// @nodoc
mixin _$AreaState {
  List<AreaModelSaas> get areaList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isFailure => throw _privateConstructorUsedError;

  /// Create a copy of AreaState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AreaStateCopyWith<AreaState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaStateCopyWith<$Res> {
  factory $AreaStateCopyWith(AreaState value, $Res Function(AreaState) then) =
      _$AreaStateCopyWithImpl<$Res, AreaState>;
  @useResult
  $Res call({List<AreaModelSaas> areaList, bool isLoading, bool isFailure});
}

/// @nodoc
class _$AreaStateCopyWithImpl<$Res, $Val extends AreaState>
    implements $AreaStateCopyWith<$Res> {
  _$AreaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AreaState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? areaList = null,
    Object? isLoading = null,
    Object? isFailure = null,
  }) {
    return _then(_value.copyWith(
      areaList: null == areaList
          ? _value.areaList
          : areaList // ignore: cast_nullable_to_non_nullable
              as List<AreaModelSaas>,
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
abstract class _$$AreaStateImplCopyWith<$Res>
    implements $AreaStateCopyWith<$Res> {
  factory _$$AreaStateImplCopyWith(
          _$AreaStateImpl value, $Res Function(_$AreaStateImpl) then) =
      __$$AreaStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AreaModelSaas> areaList, bool isLoading, bool isFailure});
}

/// @nodoc
class __$$AreaStateImplCopyWithImpl<$Res>
    extends _$AreaStateCopyWithImpl<$Res, _$AreaStateImpl>
    implements _$$AreaStateImplCopyWith<$Res> {
  __$$AreaStateImplCopyWithImpl(
      _$AreaStateImpl _value, $Res Function(_$AreaStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AreaState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? areaList = null,
    Object? isLoading = null,
    Object? isFailure = null,
  }) {
    return _then(_$AreaStateImpl(
      areaList: null == areaList
          ? _value._areaList
          : areaList // ignore: cast_nullable_to_non_nullable
              as List<AreaModelSaas>,
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

class _$AreaStateImpl implements _AreaState {
  const _$AreaStateImpl(
      {required final List<AreaModelSaas> areaList,
      required this.isLoading,
      required this.isFailure})
      : _areaList = areaList;

  final List<AreaModelSaas> _areaList;
  @override
  List<AreaModelSaas> get areaList {
    if (_areaList is EqualUnmodifiableListView) return _areaList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_areaList);
  }

  @override
  final bool isLoading;
  @override
  final bool isFailure;

  @override
  String toString() {
    return 'AreaState(areaList: $areaList, isLoading: $isLoading, isFailure: $isFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AreaStateImpl &&
            const DeepCollectionEquality().equals(other._areaList, _areaList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isFailure, isFailure) ||
                other.isFailure == isFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_areaList), isLoading, isFailure);

  /// Create a copy of AreaState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AreaStateImplCopyWith<_$AreaStateImpl> get copyWith =>
      __$$AreaStateImplCopyWithImpl<_$AreaStateImpl>(this, _$identity);
}

abstract class _AreaState implements AreaState {
  const factory _AreaState(
      {required final List<AreaModelSaas> areaList,
      required final bool isLoading,
      required final bool isFailure}) = _$AreaStateImpl;

  @override
  List<AreaModelSaas> get areaList;
  @override
  bool get isLoading;
  @override
  bool get isFailure;

  /// Create a copy of AreaState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AreaStateImplCopyWith<_$AreaStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
