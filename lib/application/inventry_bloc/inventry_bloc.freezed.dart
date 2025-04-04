// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventry_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InventryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getInventry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getInventry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getInventry,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInventry value) getInventry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInventry value)? getInventry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInventry value)? getInventry,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventryEventCopyWith<$Res> {
  factory $InventryEventCopyWith(
          InventryEvent value, $Res Function(InventryEvent) then) =
      _$InventryEventCopyWithImpl<$Res, InventryEvent>;
}

/// @nodoc
class _$InventryEventCopyWithImpl<$Res, $Val extends InventryEvent>
    implements $InventryEventCopyWith<$Res> {
  _$InventryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InventryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetInventryImplCopyWith<$Res> {
  factory _$$GetInventryImplCopyWith(
          _$GetInventryImpl value, $Res Function(_$GetInventryImpl) then) =
      __$$GetInventryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetInventryImplCopyWithImpl<$Res>
    extends _$InventryEventCopyWithImpl<$Res, _$GetInventryImpl>
    implements _$$GetInventryImplCopyWith<$Res> {
  __$$GetInventryImplCopyWithImpl(
      _$GetInventryImpl _value, $Res Function(_$GetInventryImpl) _then)
      : super(_value, _then);

  /// Create a copy of InventryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetInventryImpl implements GetInventry {
  const _$GetInventryImpl();

  @override
  String toString() {
    return 'InventryEvent.getInventry()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetInventryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getInventry,
  }) {
    return getInventry();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getInventry,
  }) {
    return getInventry?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getInventry,
    required TResult orElse(),
  }) {
    if (getInventry != null) {
      return getInventry();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInventry value) getInventry,
  }) {
    return getInventry(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInventry value)? getInventry,
  }) {
    return getInventry?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInventry value)? getInventry,
    required TResult orElse(),
  }) {
    if (getInventry != null) {
      return getInventry(this);
    }
    return orElse();
  }
}

abstract class GetInventry implements InventryEvent {
  const factory GetInventry() = _$GetInventryImpl;
}

/// @nodoc
mixin _$InventryState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isFailure => throw _privateConstructorUsedError;
  List<Inventry> get inventry => throw _privateConstructorUsedError;

  /// Create a copy of InventryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InventryStateCopyWith<InventryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventryStateCopyWith<$Res> {
  factory $InventryStateCopyWith(
          InventryState value, $Res Function(InventryState) then) =
      _$InventryStateCopyWithImpl<$Res, InventryState>;
  @useResult
  $Res call({bool isLoading, bool isFailure, List<Inventry> inventry});
}

/// @nodoc
class _$InventryStateCopyWithImpl<$Res, $Val extends InventryState>
    implements $InventryStateCopyWith<$Res> {
  _$InventryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InventryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isFailure = null,
    Object? inventry = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailure: null == isFailure
          ? _value.isFailure
          : isFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      inventry: null == inventry
          ? _value.inventry
          : inventry // ignore: cast_nullable_to_non_nullable
              as List<Inventry>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InventryStateImplCopyWith<$Res>
    implements $InventryStateCopyWith<$Res> {
  factory _$$InventryStateImplCopyWith(
          _$InventryStateImpl value, $Res Function(_$InventryStateImpl) then) =
      __$$InventryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool isFailure, List<Inventry> inventry});
}

/// @nodoc
class __$$InventryStateImplCopyWithImpl<$Res>
    extends _$InventryStateCopyWithImpl<$Res, _$InventryStateImpl>
    implements _$$InventryStateImplCopyWith<$Res> {
  __$$InventryStateImplCopyWithImpl(
      _$InventryStateImpl _value, $Res Function(_$InventryStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of InventryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isFailure = null,
    Object? inventry = null,
  }) {
    return _then(_$InventryStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailure: null == isFailure
          ? _value.isFailure
          : isFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      inventry: null == inventry
          ? _value._inventry
          : inventry // ignore: cast_nullable_to_non_nullable
              as List<Inventry>,
    ));
  }
}

/// @nodoc

class _$InventryStateImpl implements _InventryState {
  const _$InventryStateImpl(
      {required this.isLoading,
      required this.isFailure,
      required final List<Inventry> inventry})
      : _inventry = inventry;

  @override
  final bool isLoading;
  @override
  final bool isFailure;
  final List<Inventry> _inventry;
  @override
  List<Inventry> get inventry {
    if (_inventry is EqualUnmodifiableListView) return _inventry;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inventry);
  }

  @override
  String toString() {
    return 'InventryState(isLoading: $isLoading, isFailure: $isFailure, inventry: $inventry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InventryStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isFailure, isFailure) ||
                other.isFailure == isFailure) &&
            const DeepCollectionEquality().equals(other._inventry, _inventry));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isFailure,
      const DeepCollectionEquality().hash(_inventry));

  /// Create a copy of InventryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InventryStateImplCopyWith<_$InventryStateImpl> get copyWith =>
      __$$InventryStateImplCopyWithImpl<_$InventryStateImpl>(this, _$identity);
}

abstract class _InventryState implements InventryState {
  const factory _InventryState(
      {required final bool isLoading,
      required final bool isFailure,
      required final List<Inventry> inventry}) = _$InventryStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isFailure;
  @override
  List<Inventry> get inventry;

  /// Create a copy of InventryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InventryStateImplCopyWith<_$InventryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
