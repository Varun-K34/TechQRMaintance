// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authbloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthblocEvent {
  AuthRegModel get authmodel => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthRegModel authmodel) signup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthRegModel authmodel)? signup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthRegModel authmodel)? signup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Signup value) signup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Signup value)? signup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Signup value)? signup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AuthblocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthblocEventCopyWith<AuthblocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthblocEventCopyWith<$Res> {
  factory $AuthblocEventCopyWith(
          AuthblocEvent value, $Res Function(AuthblocEvent) then) =
      _$AuthblocEventCopyWithImpl<$Res, AuthblocEvent>;
  @useResult
  $Res call({AuthRegModel authmodel});
}

/// @nodoc
class _$AuthblocEventCopyWithImpl<$Res, $Val extends AuthblocEvent>
    implements $AuthblocEventCopyWith<$Res> {
  _$AuthblocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthblocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authmodel = null,
  }) {
    return _then(_value.copyWith(
      authmodel: null == authmodel
          ? _value.authmodel
          : authmodel // ignore: cast_nullable_to_non_nullable
              as AuthRegModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignupImplCopyWith<$Res>
    implements $AuthblocEventCopyWith<$Res> {
  factory _$$SignupImplCopyWith(
          _$SignupImpl value, $Res Function(_$SignupImpl) then) =
      __$$SignupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthRegModel authmodel});
}

/// @nodoc
class __$$SignupImplCopyWithImpl<$Res>
    extends _$AuthblocEventCopyWithImpl<$Res, _$SignupImpl>
    implements _$$SignupImplCopyWith<$Res> {
  __$$SignupImplCopyWithImpl(
      _$SignupImpl _value, $Res Function(_$SignupImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthblocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authmodel = null,
  }) {
    return _then(_$SignupImpl(
      authmodel: null == authmodel
          ? _value.authmodel
          : authmodel // ignore: cast_nullable_to_non_nullable
              as AuthRegModel,
    ));
  }
}

/// @nodoc

class _$SignupImpl implements Signup {
  const _$SignupImpl({required this.authmodel});

  @override
  final AuthRegModel authmodel;

  @override
  String toString() {
    return 'AuthblocEvent.signup(authmodel: $authmodel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupImpl &&
            (identical(other.authmodel, authmodel) ||
                other.authmodel == authmodel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authmodel);

  /// Create a copy of AuthblocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupImplCopyWith<_$SignupImpl> get copyWith =>
      __$$SignupImplCopyWithImpl<_$SignupImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthRegModel authmodel) signup,
  }) {
    return signup(authmodel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthRegModel authmodel)? signup,
  }) {
    return signup?.call(authmodel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthRegModel authmodel)? signup,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup(authmodel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Signup value) signup,
  }) {
    return signup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Signup value)? signup,
  }) {
    return signup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Signup value)? signup,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup(this);
    }
    return orElse();
  }
}

abstract class Signup implements AuthblocEvent {
  const factory Signup({required final AuthRegModel authmodel}) = _$SignupImpl;

  @override
  AuthRegModel get authmodel;

  /// Create a copy of AuthblocEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignupImplCopyWith<_$SignupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthblocState {
  List<AuthRegModel> get authlist => throw _privateConstructorUsedError;
  bool get isloading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<AuthRegModel> authlist, bool isloading, bool isError)
        authenticatedstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<AuthRegModel> authlist, bool isloading, bool isError)?
        authenticatedstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AuthRegModel> authlist, bool isloading, bool isError)?
        authenticatedstate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticatedstate value) authenticatedstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authenticatedstate value)? authenticatedstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticatedstate value)? authenticatedstate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AuthblocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthblocStateCopyWith<AuthblocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthblocStateCopyWith<$Res> {
  factory $AuthblocStateCopyWith(
          AuthblocState value, $Res Function(AuthblocState) then) =
      _$AuthblocStateCopyWithImpl<$Res, AuthblocState>;
  @useResult
  $Res call({List<AuthRegModel> authlist, bool isloading, bool isError});
}

/// @nodoc
class _$AuthblocStateCopyWithImpl<$Res, $Val extends AuthblocState>
    implements $AuthblocStateCopyWith<$Res> {
  _$AuthblocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthblocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authlist = null,
    Object? isloading = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      authlist: null == authlist
          ? _value.authlist
          : authlist // ignore: cast_nullable_to_non_nullable
              as List<AuthRegModel>,
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticatedstateImplCopyWith<$Res>
    implements $AuthblocStateCopyWith<$Res> {
  factory _$$AuthenticatedstateImplCopyWith(_$AuthenticatedstateImpl value,
          $Res Function(_$AuthenticatedstateImpl) then) =
      __$$AuthenticatedstateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AuthRegModel> authlist, bool isloading, bool isError});
}

/// @nodoc
class __$$AuthenticatedstateImplCopyWithImpl<$Res>
    extends _$AuthblocStateCopyWithImpl<$Res, _$AuthenticatedstateImpl>
    implements _$$AuthenticatedstateImplCopyWith<$Res> {
  __$$AuthenticatedstateImplCopyWithImpl(_$AuthenticatedstateImpl _value,
      $Res Function(_$AuthenticatedstateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthblocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authlist = null,
    Object? isloading = null,
    Object? isError = null,
  }) {
    return _then(_$AuthenticatedstateImpl(
      authlist: null == authlist
          ? _value._authlist
          : authlist // ignore: cast_nullable_to_non_nullable
              as List<AuthRegModel>,
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthenticatedstateImpl implements Authenticatedstate {
  const _$AuthenticatedstateImpl(
      {required final List<AuthRegModel> authlist,
      required this.isloading,
      required this.isError})
      : _authlist = authlist;

  final List<AuthRegModel> _authlist;
  @override
  List<AuthRegModel> get authlist {
    if (_authlist is EqualUnmodifiableListView) return _authlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_authlist);
  }

  @override
  final bool isloading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'AuthblocState.authenticatedstate(authlist: $authlist, isloading: $isloading, isError: $isError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedstateImpl &&
            const DeepCollectionEquality().equals(other._authlist, _authlist) &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_authlist), isloading, isError);

  /// Create a copy of AuthblocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedstateImplCopyWith<_$AuthenticatedstateImpl> get copyWith =>
      __$$AuthenticatedstateImplCopyWithImpl<_$AuthenticatedstateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<AuthRegModel> authlist, bool isloading, bool isError)
        authenticatedstate,
  }) {
    return authenticatedstate(authlist, isloading, isError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<AuthRegModel> authlist, bool isloading, bool isError)?
        authenticatedstate,
  }) {
    return authenticatedstate?.call(authlist, isloading, isError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AuthRegModel> authlist, bool isloading, bool isError)?
        authenticatedstate,
    required TResult orElse(),
  }) {
    if (authenticatedstate != null) {
      return authenticatedstate(authlist, isloading, isError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticatedstate value) authenticatedstate,
  }) {
    return authenticatedstate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authenticatedstate value)? authenticatedstate,
  }) {
    return authenticatedstate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticatedstate value)? authenticatedstate,
    required TResult orElse(),
  }) {
    if (authenticatedstate != null) {
      return authenticatedstate(this);
    }
    return orElse();
  }
}

abstract class Authenticatedstate implements AuthblocState {
  const factory Authenticatedstate(
      {required final List<AuthRegModel> authlist,
      required final bool isloading,
      required final bool isError}) = _$AuthenticatedstateImpl;

  @override
  List<AuthRegModel> get authlist;
  @override
  bool get isloading;
  @override
  bool get isError;

  /// Create a copy of AuthblocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticatedstateImplCopyWith<_$AuthenticatedstateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
