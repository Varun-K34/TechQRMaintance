// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetLocationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getloc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getloc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getloc,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Getloc value) getloc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Getloc value)? getloc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Getloc value)? getloc,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetLocationEventCopyWith<$Res> {
  factory $GetLocationEventCopyWith(
          GetLocationEvent value, $Res Function(GetLocationEvent) then) =
      _$GetLocationEventCopyWithImpl<$Res, GetLocationEvent>;
}

/// @nodoc
class _$GetLocationEventCopyWithImpl<$Res, $Val extends GetLocationEvent>
    implements $GetLocationEventCopyWith<$Res> {
  _$GetLocationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetLocationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetlocImplCopyWith<$Res> {
  factory _$$GetlocImplCopyWith(
          _$GetlocImpl value, $Res Function(_$GetlocImpl) then) =
      __$$GetlocImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetlocImplCopyWithImpl<$Res>
    extends _$GetLocationEventCopyWithImpl<$Res, _$GetlocImpl>
    implements _$$GetlocImplCopyWith<$Res> {
  __$$GetlocImplCopyWithImpl(
      _$GetlocImpl _value, $Res Function(_$GetlocImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetLocationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetlocImpl implements Getloc {
  const _$GetlocImpl();

  @override
  String toString() {
    return 'GetLocationEvent.getloc()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetlocImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getloc,
  }) {
    return getloc();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getloc,
  }) {
    return getloc?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getloc,
    required TResult orElse(),
  }) {
    if (getloc != null) {
      return getloc();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Getloc value) getloc,
  }) {
    return getloc(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Getloc value)? getloc,
  }) {
    return getloc?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Getloc value)? getloc,
    required TResult orElse(),
  }) {
    if (getloc != null) {
      return getloc(this);
    }
    return orElse();
  }
}

abstract class Getloc implements GetLocationEvent {
  const factory Getloc() = _$GetlocImpl;
}

/// @nodoc
mixin _$GetLocationState {
  List<String> get location => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isFailure => throw _privateConstructorUsedError;

  /// Create a copy of GetLocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetLocationStateCopyWith<GetLocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetLocationStateCopyWith<$Res> {
  factory $GetLocationStateCopyWith(
          GetLocationState value, $Res Function(GetLocationState) then) =
      _$GetLocationStateCopyWithImpl<$Res, GetLocationState>;
  @useResult
  $Res call({List<String> location, bool isLoading, bool isFailure});
}

/// @nodoc
class _$GetLocationStateCopyWithImpl<$Res, $Val extends GetLocationState>
    implements $GetLocationStateCopyWith<$Res> {
  _$GetLocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetLocationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? isLoading = null,
    Object? isFailure = null,
  }) {
    return _then(_value.copyWith(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
abstract class _$$GetLocationStateImplCopyWith<$Res>
    implements $GetLocationStateCopyWith<$Res> {
  factory _$$GetLocationStateImplCopyWith(_$GetLocationStateImpl value,
          $Res Function(_$GetLocationStateImpl) then) =
      __$$GetLocationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> location, bool isLoading, bool isFailure});
}

/// @nodoc
class __$$GetLocationStateImplCopyWithImpl<$Res>
    extends _$GetLocationStateCopyWithImpl<$Res, _$GetLocationStateImpl>
    implements _$$GetLocationStateImplCopyWith<$Res> {
  __$$GetLocationStateImplCopyWithImpl(_$GetLocationStateImpl _value,
      $Res Function(_$GetLocationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetLocationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? isLoading = null,
    Object? isFailure = null,
  }) {
    return _then(_$GetLocationStateImpl(
      location: null == location
          ? _value._location
          : location // ignore: cast_nullable_to_non_nullable
              as List<String>,
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

class _$GetLocationStateImpl implements _GetLocationState {
  const _$GetLocationStateImpl(
      {required final List<String> location,
      required this.isLoading,
      required this.isFailure})
      : _location = location;

  final List<String> _location;
  @override
  List<String> get location {
    if (_location is EqualUnmodifiableListView) return _location;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_location);
  }

  @override
  final bool isLoading;
  @override
  final bool isFailure;

  @override
  String toString() {
    return 'GetLocationState(location: $location, isLoading: $isLoading, isFailure: $isFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLocationStateImpl &&
            const DeepCollectionEquality().equals(other._location, _location) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isFailure, isFailure) ||
                other.isFailure == isFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_location), isLoading, isFailure);

  /// Create a copy of GetLocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetLocationStateImplCopyWith<_$GetLocationStateImpl> get copyWith =>
      __$$GetLocationStateImplCopyWithImpl<_$GetLocationStateImpl>(
          this, _$identity);
}

abstract class _GetLocationState implements GetLocationState {
  const factory _GetLocationState(
      {required final List<String> location,
      required final bool isLoading,
      required final bool isFailure}) = _$GetLocationStateImpl;

  @override
  List<String> get location;
  @override
  bool get isLoading;
  @override
  bool get isFailure;

  /// Create a copy of GetLocationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetLocationStateImplCopyWith<_$GetLocationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
