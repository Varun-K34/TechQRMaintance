// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkbloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CheckblocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLogOrNot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkLogOrNot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLogOrNot,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckLogOrNot value) checkLogOrNot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckLogOrNot value)? checkLogOrNot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckLogOrNot value)? checkLogOrNot,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckblocEventCopyWith<$Res> {
  factory $CheckblocEventCopyWith(
          CheckblocEvent value, $Res Function(CheckblocEvent) then) =
      _$CheckblocEventCopyWithImpl<$Res, CheckblocEvent>;
}

/// @nodoc
class _$CheckblocEventCopyWithImpl<$Res, $Val extends CheckblocEvent>
    implements $CheckblocEventCopyWith<$Res> {
  _$CheckblocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckblocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CheckLogOrNotImplCopyWith<$Res> {
  factory _$$CheckLogOrNotImplCopyWith(
          _$CheckLogOrNotImpl value, $Res Function(_$CheckLogOrNotImpl) then) =
      __$$CheckLogOrNotImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckLogOrNotImplCopyWithImpl<$Res>
    extends _$CheckblocEventCopyWithImpl<$Res, _$CheckLogOrNotImpl>
    implements _$$CheckLogOrNotImplCopyWith<$Res> {
  __$$CheckLogOrNotImplCopyWithImpl(
      _$CheckLogOrNotImpl _value, $Res Function(_$CheckLogOrNotImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckblocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckLogOrNotImpl implements CheckLogOrNot {
  const _$CheckLogOrNotImpl();

  @override
  String toString() {
    return 'CheckblocEvent.checkLogOrNot()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckLogOrNotImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLogOrNot,
  }) {
    return checkLogOrNot();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkLogOrNot,
  }) {
    return checkLogOrNot?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLogOrNot,
    required TResult orElse(),
  }) {
    if (checkLogOrNot != null) {
      return checkLogOrNot();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckLogOrNot value) checkLogOrNot,
  }) {
    return checkLogOrNot(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckLogOrNot value)? checkLogOrNot,
  }) {
    return checkLogOrNot?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckLogOrNot value)? checkLogOrNot,
    required TResult orElse(),
  }) {
    if (checkLogOrNot != null) {
      return checkLogOrNot(this);
    }
    return orElse();
  }
}

abstract class CheckLogOrNot implements CheckblocEvent {
  const factory CheckLogOrNot() = _$CheckLogOrNotImpl;
}

/// @nodoc
mixin _$CheckblocState {
  bool get unauthenticated => throw _privateConstructorUsedError;
  bool get authenticated => throw _privateConstructorUsedError;
  bool get failure => throw _privateConstructorUsedError;

  /// Create a copy of CheckblocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckblocStateCopyWith<CheckblocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckblocStateCopyWith<$Res> {
  factory $CheckblocStateCopyWith(
          CheckblocState value, $Res Function(CheckblocState) then) =
      _$CheckblocStateCopyWithImpl<$Res, CheckblocState>;
  @useResult
  $Res call({bool unauthenticated, bool authenticated, bool failure});
}

/// @nodoc
class _$CheckblocStateCopyWithImpl<$Res, $Val extends CheckblocState>
    implements $CheckblocStateCopyWith<$Res> {
  _$CheckblocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckblocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unauthenticated = null,
    Object? authenticated = null,
    Object? failure = null,
  }) {
    return _then(_value.copyWith(
      unauthenticated: null == unauthenticated
          ? _value.unauthenticated
          : unauthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      authenticated: null == authenticated
          ? _value.authenticated
          : authenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckblocStateImplCopyWith<$Res>
    implements $CheckblocStateCopyWith<$Res> {
  factory _$$CheckblocStateImplCopyWith(_$CheckblocStateImpl value,
          $Res Function(_$CheckblocStateImpl) then) =
      __$$CheckblocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool unauthenticated, bool authenticated, bool failure});
}

/// @nodoc
class __$$CheckblocStateImplCopyWithImpl<$Res>
    extends _$CheckblocStateCopyWithImpl<$Res, _$CheckblocStateImpl>
    implements _$$CheckblocStateImplCopyWith<$Res> {
  __$$CheckblocStateImplCopyWithImpl(
      _$CheckblocStateImpl _value, $Res Function(_$CheckblocStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckblocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unauthenticated = null,
    Object? authenticated = null,
    Object? failure = null,
  }) {
    return _then(_$CheckblocStateImpl(
      unauthenticated: null == unauthenticated
          ? _value.unauthenticated
          : unauthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      authenticated: null == authenticated
          ? _value.authenticated
          : authenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CheckblocStateImpl implements _CheckblocState {
  const _$CheckblocStateImpl(
      {required this.unauthenticated,
      required this.authenticated,
      required this.failure});

  @override
  final bool unauthenticated;
  @override
  final bool authenticated;
  @override
  final bool failure;

  @override
  String toString() {
    return 'CheckblocState(unauthenticated: $unauthenticated, authenticated: $authenticated, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckblocStateImpl &&
            (identical(other.unauthenticated, unauthenticated) ||
                other.unauthenticated == unauthenticated) &&
            (identical(other.authenticated, authenticated) ||
                other.authenticated == authenticated) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, unauthenticated, authenticated, failure);

  /// Create a copy of CheckblocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckblocStateImplCopyWith<_$CheckblocStateImpl> get copyWith =>
      __$$CheckblocStateImplCopyWithImpl<_$CheckblocStateImpl>(
          this, _$identity);
}

abstract class _CheckblocState implements CheckblocState {
  const factory _CheckblocState(
      {required final bool unauthenticated,
      required final bool authenticated,
      required final bool failure}) = _$CheckblocStateImpl;

  @override
  bool get unauthenticated;
  @override
  bool get authenticated;
  @override
  bool get failure;

  /// Create a copy of CheckblocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckblocStateImplCopyWith<_$CheckblocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
