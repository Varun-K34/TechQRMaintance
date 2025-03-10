// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logbloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LogblocEvent {
  String get email => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of LogblocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LogblocEventCopyWith<LogblocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogblocEventCopyWith<$Res> {
  factory $LogblocEventCopyWith(
          LogblocEvent value, $Res Function(LogblocEvent) then) =
      _$LogblocEventCopyWithImpl<$Res, LogblocEvent>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$LogblocEventCopyWithImpl<$Res, $Val extends LogblocEvent>
    implements $LogblocEventCopyWith<$Res> {
  _$LogblocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LogblocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res>
    implements $LogblocEventCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$LogblocEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  /// Create a copy of LogblocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$LoginImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginImpl implements Login {
  const _$LoginImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'LogblocEvent.login(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of LogblocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) login,
  }) {
    return login(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? login,
  }) {
    return login?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class Login implements LogblocEvent {
  const factory Login({required final String email}) = _$LoginImpl;

  @override
  String get email;

  /// Create a copy of LogblocEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LogblocState {
  UserModel get userModelLists => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isFailure => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;

  /// Create a copy of LogblocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LogblocStateCopyWith<LogblocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogblocStateCopyWith<$Res> {
  factory $LogblocStateCopyWith(
          LogblocState value, $Res Function(LogblocState) then) =
      _$LogblocStateCopyWithImpl<$Res, LogblocState>;
  @useResult
  $Res call(
      {UserModel userModelLists,
      bool isLoading,
      bool isFailure,
      bool isSuccess});
}

/// @nodoc
class _$LogblocStateCopyWithImpl<$Res, $Val extends LogblocState>
    implements $LogblocStateCopyWith<$Res> {
  _$LogblocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LogblocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userModelLists = null,
    Object? isLoading = null,
    Object? isFailure = null,
    Object? isSuccess = null,
  }) {
    return _then(_value.copyWith(
      userModelLists: null == userModelLists
          ? _value.userModelLists
          : userModelLists // ignore: cast_nullable_to_non_nullable
              as UserModel,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailure: null == isFailure
          ? _value.isFailure
          : isFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LogblocStateImplCopyWith<$Res>
    implements $LogblocStateCopyWith<$Res> {
  factory _$$LogblocStateImplCopyWith(
          _$LogblocStateImpl value, $Res Function(_$LogblocStateImpl) then) =
      __$$LogblocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserModel userModelLists,
      bool isLoading,
      bool isFailure,
      bool isSuccess});
}

/// @nodoc
class __$$LogblocStateImplCopyWithImpl<$Res>
    extends _$LogblocStateCopyWithImpl<$Res, _$LogblocStateImpl>
    implements _$$LogblocStateImplCopyWith<$Res> {
  __$$LogblocStateImplCopyWithImpl(
      _$LogblocStateImpl _value, $Res Function(_$LogblocStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LogblocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userModelLists = null,
    Object? isLoading = null,
    Object? isFailure = null,
    Object? isSuccess = null,
  }) {
    return _then(_$LogblocStateImpl(
      userModelLists: null == userModelLists
          ? _value.userModelLists
          : userModelLists // ignore: cast_nullable_to_non_nullable
              as UserModel,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailure: null == isFailure
          ? _value.isFailure
          : isFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LogblocStateImpl implements _LogblocState {
  const _$LogblocStateImpl(
      {required this.userModelLists,
      required this.isLoading,
      required this.isFailure,
      required this.isSuccess});

  @override
  final UserModel userModelLists;
  @override
  final bool isLoading;
  @override
  final bool isFailure;
  @override
  final bool isSuccess;

  @override
  String toString() {
    return 'LogblocState(userModelLists: $userModelLists, isLoading: $isLoading, isFailure: $isFailure, isSuccess: $isSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogblocStateImpl &&
            (identical(other.userModelLists, userModelLists) ||
                other.userModelLists == userModelLists) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isFailure, isFailure) ||
                other.isFailure == isFailure) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userModelLists, isLoading, isFailure, isSuccess);

  /// Create a copy of LogblocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LogblocStateImplCopyWith<_$LogblocStateImpl> get copyWith =>
      __$$LogblocStateImplCopyWithImpl<_$LogblocStateImpl>(this, _$identity);
}

abstract class _LogblocState implements LogblocState {
  const factory _LogblocState(
      {required final UserModel userModelLists,
      required final bool isLoading,
      required final bool isFailure,
      required final bool isSuccess}) = _$LogblocStateImpl;

  @override
  UserModel get userModelLists;
  @override
  bool get isLoading;
  @override
  bool get isFailure;
  @override
  bool get isSuccess;

  /// Create a copy of LogblocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LogblocStateImplCopyWith<_$LogblocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
