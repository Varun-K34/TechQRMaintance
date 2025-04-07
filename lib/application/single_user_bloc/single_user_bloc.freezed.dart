// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'single_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SingleUserEvent {
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) singleUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? singleUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? singleUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SingleUser value) singleUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SingleUser value)? singleUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SingleUser value)? singleUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SingleUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SingleUserEventCopyWith<SingleUserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleUserEventCopyWith<$Res> {
  factory $SingleUserEventCopyWith(
          SingleUserEvent value, $Res Function(SingleUserEvent) then) =
      _$SingleUserEventCopyWithImpl<$Res, SingleUserEvent>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$SingleUserEventCopyWithImpl<$Res, $Val extends SingleUserEvent>
    implements $SingleUserEventCopyWith<$Res> {
  _$SingleUserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SingleUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SingleUserImplCopyWith<$Res>
    implements $SingleUserEventCopyWith<$Res> {
  factory _$$SingleUserImplCopyWith(
          _$SingleUserImpl value, $Res Function(_$SingleUserImpl) then) =
      __$$SingleUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$SingleUserImplCopyWithImpl<$Res>
    extends _$SingleUserEventCopyWithImpl<$Res, _$SingleUserImpl>
    implements _$$SingleUserImplCopyWith<$Res> {
  __$$SingleUserImplCopyWithImpl(
      _$SingleUserImpl _value, $Res Function(_$SingleUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of SingleUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$SingleUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SingleUserImpl implements SingleUser {
  const _$SingleUserImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'SingleUserEvent.singleUser(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleUserImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of SingleUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleUserImplCopyWith<_$SingleUserImpl> get copyWith =>
      __$$SingleUserImplCopyWithImpl<_$SingleUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) singleUser,
  }) {
    return singleUser(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? singleUser,
  }) {
    return singleUser?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? singleUser,
    required TResult orElse(),
  }) {
    if (singleUser != null) {
      return singleUser(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SingleUser value) singleUser,
  }) {
    return singleUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SingleUser value)? singleUser,
  }) {
    return singleUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SingleUser value)? singleUser,
    required TResult orElse(),
  }) {
    if (singleUser != null) {
      return singleUser(this);
    }
    return orElse();
  }
}

abstract class SingleUser implements SingleUserEvent {
  const factory SingleUser({required final String id}) = _$SingleUserImpl;

  @override
  String get id;

  /// Create a copy of SingleUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SingleUserImplCopyWith<_$SingleUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SingleUserState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  UserModel get user => throw _privateConstructorUsedError;

  /// Create a copy of SingleUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SingleUserStateCopyWith<SingleUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleUserStateCopyWith<$Res> {
  factory $SingleUserStateCopyWith(
          SingleUserState value, $Res Function(SingleUserState) then) =
      _$SingleUserStateCopyWithImpl<$Res, SingleUserState>;
  @useResult
  $Res call({bool isLoading, bool isError, UserModel user});
}

/// @nodoc
class _$SingleUserStateCopyWithImpl<$Res, $Val extends SingleUserState>
    implements $SingleUserStateCopyWith<$Res> {
  _$SingleUserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SingleUserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SingleUserStateImplCopyWith<$Res>
    implements $SingleUserStateCopyWith<$Res> {
  factory _$$SingleUserStateImplCopyWith(_$SingleUserStateImpl value,
          $Res Function(_$SingleUserStateImpl) then) =
      __$$SingleUserStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool isError, UserModel user});
}

/// @nodoc
class __$$SingleUserStateImplCopyWithImpl<$Res>
    extends _$SingleUserStateCopyWithImpl<$Res, _$SingleUserStateImpl>
    implements _$$SingleUserStateImplCopyWith<$Res> {
  __$$SingleUserStateImplCopyWithImpl(
      _$SingleUserStateImpl _value, $Res Function(_$SingleUserStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SingleUserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? user = null,
  }) {
    return _then(_$SingleUserStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$SingleUserStateImpl implements _SingleUserState {
  const _$SingleUserStateImpl(
      {required this.isLoading, required this.isError, required this.user});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final UserModel user;

  @override
  String toString() {
    return 'SingleUserState(isLoading: $isLoading, isError: $isError, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleUserStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError, user);

  /// Create a copy of SingleUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleUserStateImplCopyWith<_$SingleUserStateImpl> get copyWith =>
      __$$SingleUserStateImplCopyWithImpl<_$SingleUserStateImpl>(
          this, _$identity);
}

abstract class _SingleUserState implements SingleUserState {
  const factory _SingleUserState(
      {required final bool isLoading,
      required final bool isError,
      required final UserModel user}) = _$SingleUserStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  UserModel get user;

  /// Create a copy of SingleUserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SingleUserStateImplCopyWith<_$SingleUserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
