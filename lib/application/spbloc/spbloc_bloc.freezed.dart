// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spbloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SpblocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSpStoredData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSpStoredData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSpStoredData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSpStoredData value) getSpStoredData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSpStoredData value)? getSpStoredData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSpStoredData value)? getSpStoredData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpblocEventCopyWith<$Res> {
  factory $SpblocEventCopyWith(
          SpblocEvent value, $Res Function(SpblocEvent) then) =
      _$SpblocEventCopyWithImpl<$Res, SpblocEvent>;
}

/// @nodoc
class _$SpblocEventCopyWithImpl<$Res, $Val extends SpblocEvent>
    implements $SpblocEventCopyWith<$Res> {
  _$SpblocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpblocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetSpStoredDataImplCopyWith<$Res> {
  factory _$$GetSpStoredDataImplCopyWith(_$GetSpStoredDataImpl value,
          $Res Function(_$GetSpStoredDataImpl) then) =
      __$$GetSpStoredDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetSpStoredDataImplCopyWithImpl<$Res>
    extends _$SpblocEventCopyWithImpl<$Res, _$GetSpStoredDataImpl>
    implements _$$GetSpStoredDataImplCopyWith<$Res> {
  __$$GetSpStoredDataImplCopyWithImpl(
      _$GetSpStoredDataImpl _value, $Res Function(_$GetSpStoredDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpblocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetSpStoredDataImpl implements GetSpStoredData {
  const _$GetSpStoredDataImpl();

  @override
  String toString() {
    return 'SpblocEvent.getSpStoredData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetSpStoredDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSpStoredData,
  }) {
    return getSpStoredData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSpStoredData,
  }) {
    return getSpStoredData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSpStoredData,
    required TResult orElse(),
  }) {
    if (getSpStoredData != null) {
      return getSpStoredData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSpStoredData value) getSpStoredData,
  }) {
    return getSpStoredData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSpStoredData value)? getSpStoredData,
  }) {
    return getSpStoredData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSpStoredData value)? getSpStoredData,
    required TResult orElse(),
  }) {
    if (getSpStoredData != null) {
      return getSpStoredData(this);
    }
    return orElse();
  }
}

abstract class GetSpStoredData implements SpblocEvent {
  const factory GetSpStoredData() = _$GetSpStoredDataImpl;
}

/// @nodoc
mixin _$SpblocState {
  UserModel get userData => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isFailure => throw _privateConstructorUsedError;

  /// Create a copy of SpblocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpblocStateCopyWith<SpblocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpblocStateCopyWith<$Res> {
  factory $SpblocStateCopyWith(
          SpblocState value, $Res Function(SpblocState) then) =
      _$SpblocStateCopyWithImpl<$Res, SpblocState>;
  @useResult
  $Res call({UserModel userData, bool isLoading, bool isFailure});
}

/// @nodoc
class _$SpblocStateCopyWithImpl<$Res, $Val extends SpblocState>
    implements $SpblocStateCopyWith<$Res> {
  _$SpblocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpblocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = null,
    Object? isLoading = null,
    Object? isFailure = null,
  }) {
    return _then(_value.copyWith(
      userData: null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserModel,
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
abstract class _$$ComplaintblocStateImplCopyWith<$Res>
    implements $SpblocStateCopyWith<$Res> {
  factory _$$ComplaintblocStateImplCopyWith(_$ComplaintblocStateImpl value,
          $Res Function(_$ComplaintblocStateImpl) then) =
      __$$ComplaintblocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserModel userData, bool isLoading, bool isFailure});
}

/// @nodoc
class __$$ComplaintblocStateImplCopyWithImpl<$Res>
    extends _$SpblocStateCopyWithImpl<$Res, _$ComplaintblocStateImpl>
    implements _$$ComplaintblocStateImplCopyWith<$Res> {
  __$$ComplaintblocStateImplCopyWithImpl(_$ComplaintblocStateImpl _value,
      $Res Function(_$ComplaintblocStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpblocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = null,
    Object? isLoading = null,
    Object? isFailure = null,
  }) {
    return _then(_$ComplaintblocStateImpl(
      userData: null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserModel,
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

class _$ComplaintblocStateImpl implements _ComplaintblocState {
  const _$ComplaintblocStateImpl(
      {required this.userData,
      required this.isLoading,
      required this.isFailure});

  @override
  final UserModel userData;
  @override
  final bool isLoading;
  @override
  final bool isFailure;

  @override
  String toString() {
    return 'SpblocState(userData: $userData, isLoading: $isLoading, isFailure: $isFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComplaintblocStateImpl &&
            (identical(other.userData, userData) ||
                other.userData == userData) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isFailure, isFailure) ||
                other.isFailure == isFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userData, isLoading, isFailure);

  /// Create a copy of SpblocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ComplaintblocStateImplCopyWith<_$ComplaintblocStateImpl> get copyWith =>
      __$$ComplaintblocStateImplCopyWithImpl<_$ComplaintblocStateImpl>(
          this, _$identity);
}

abstract class _ComplaintblocState implements SpblocState {
  const factory _ComplaintblocState(
      {required final UserModel userData,
      required final bool isLoading,
      required final bool isFailure}) = _$ComplaintblocStateImpl;

  @override
  UserModel get userData;
  @override
  bool get isLoading;
  @override
  bool get isFailure;

  /// Create a copy of SpblocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ComplaintblocStateImplCopyWith<_$ComplaintblocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
