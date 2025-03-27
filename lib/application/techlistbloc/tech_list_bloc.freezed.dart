// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tech_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TechListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTechlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTechlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTechlist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Gettechlist value) getTechlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Gettechlist value)? getTechlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Gettechlist value)? getTechlist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TechListEventCopyWith<$Res> {
  factory $TechListEventCopyWith(
          TechListEvent value, $Res Function(TechListEvent) then) =
      _$TechListEventCopyWithImpl<$Res, TechListEvent>;
}

/// @nodoc
class _$TechListEventCopyWithImpl<$Res, $Val extends TechListEvent>
    implements $TechListEventCopyWith<$Res> {
  _$TechListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TechListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GettechlistImplCopyWith<$Res> {
  factory _$$GettechlistImplCopyWith(
          _$GettechlistImpl value, $Res Function(_$GettechlistImpl) then) =
      __$$GettechlistImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GettechlistImplCopyWithImpl<$Res>
    extends _$TechListEventCopyWithImpl<$Res, _$GettechlistImpl>
    implements _$$GettechlistImplCopyWith<$Res> {
  __$$GettechlistImplCopyWithImpl(
      _$GettechlistImpl _value, $Res Function(_$GettechlistImpl) _then)
      : super(_value, _then);

  /// Create a copy of TechListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GettechlistImpl implements Gettechlist {
  const _$GettechlistImpl();

  @override
  String toString() {
    return 'TechListEvent.getTechlist()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GettechlistImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTechlist,
  }) {
    return getTechlist();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTechlist,
  }) {
    return getTechlist?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTechlist,
    required TResult orElse(),
  }) {
    if (getTechlist != null) {
      return getTechlist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Gettechlist value) getTechlist,
  }) {
    return getTechlist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Gettechlist value)? getTechlist,
  }) {
    return getTechlist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Gettechlist value)? getTechlist,
    required TResult orElse(),
  }) {
    if (getTechlist != null) {
      return getTechlist(this);
    }
    return orElse();
  }
}

abstract class Gettechlist implements TechListEvent {
  const factory Gettechlist() = _$GettechlistImpl;
}

/// @nodoc
mixin _$TechListState {
  List<UserModel> get techlist => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isFailure => throw _privateConstructorUsedError;

  /// Create a copy of TechListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TechListStateCopyWith<TechListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TechListStateCopyWith<$Res> {
  factory $TechListStateCopyWith(
          TechListState value, $Res Function(TechListState) then) =
      _$TechListStateCopyWithImpl<$Res, TechListState>;
  @useResult
  $Res call({List<UserModel> techlist, bool isLoading, bool isFailure});
}

/// @nodoc
class _$TechListStateCopyWithImpl<$Res, $Val extends TechListState>
    implements $TechListStateCopyWith<$Res> {
  _$TechListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TechListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? techlist = null,
    Object? isLoading = null,
    Object? isFailure = null,
  }) {
    return _then(_value.copyWith(
      techlist: null == techlist
          ? _value.techlist
          : techlist // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
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
abstract class _$$TechListStateImplCopyWith<$Res>
    implements $TechListStateCopyWith<$Res> {
  factory _$$TechListStateImplCopyWith(
          _$TechListStateImpl value, $Res Function(_$TechListStateImpl) then) =
      __$$TechListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserModel> techlist, bool isLoading, bool isFailure});
}

/// @nodoc
class __$$TechListStateImplCopyWithImpl<$Res>
    extends _$TechListStateCopyWithImpl<$Res, _$TechListStateImpl>
    implements _$$TechListStateImplCopyWith<$Res> {
  __$$TechListStateImplCopyWithImpl(
      _$TechListStateImpl _value, $Res Function(_$TechListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TechListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? techlist = null,
    Object? isLoading = null,
    Object? isFailure = null,
  }) {
    return _then(_$TechListStateImpl(
      techlist: null == techlist
          ? _value._techlist
          : techlist // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
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

class _$TechListStateImpl implements _TechListState {
  const _$TechListStateImpl(
      {required final List<UserModel> techlist,
      required this.isLoading,
      required this.isFailure})
      : _techlist = techlist;

  final List<UserModel> _techlist;
  @override
  List<UserModel> get techlist {
    if (_techlist is EqualUnmodifiableListView) return _techlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_techlist);
  }

  @override
  final bool isLoading;
  @override
  final bool isFailure;

  @override
  String toString() {
    return 'TechListState(techlist: $techlist, isLoading: $isLoading, isFailure: $isFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TechListStateImpl &&
            const DeepCollectionEquality().equals(other._techlist, _techlist) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isFailure, isFailure) ||
                other.isFailure == isFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_techlist), isLoading, isFailure);

  /// Create a copy of TechListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TechListStateImplCopyWith<_$TechListStateImpl> get copyWith =>
      __$$TechListStateImplCopyWithImpl<_$TechListStateImpl>(this, _$identity);
}

abstract class _TechListState implements TechListState {
  const factory _TechListState(
      {required final List<UserModel> techlist,
      required final bool isLoading,
      required final bool isFailure}) = _$TechListStateImpl;

  @override
  List<UserModel> get techlist;
  @override
  bool get isLoading;
  @override
  bool get isFailure;

  /// Create a copy of TechListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TechListStateImplCopyWith<_$TechListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
