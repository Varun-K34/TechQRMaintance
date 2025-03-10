// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oranization_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OranizationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrganizationEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrganizationEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrganizationEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOrganizationEvent value) getOrganizationEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOrganizationEvent value)? getOrganizationEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOrganizationEvent value)? getOrganizationEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OranizationEventCopyWith<$Res> {
  factory $OranizationEventCopyWith(
          OranizationEvent value, $Res Function(OranizationEvent) then) =
      _$OranizationEventCopyWithImpl<$Res, OranizationEvent>;
}

/// @nodoc
class _$OranizationEventCopyWithImpl<$Res, $Val extends OranizationEvent>
    implements $OranizationEventCopyWith<$Res> {
  _$OranizationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OranizationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetOrganizationEventImplCopyWith<$Res> {
  factory _$$GetOrganizationEventImplCopyWith(_$GetOrganizationEventImpl value,
          $Res Function(_$GetOrganizationEventImpl) then) =
      __$$GetOrganizationEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetOrganizationEventImplCopyWithImpl<$Res>
    extends _$OranizationEventCopyWithImpl<$Res, _$GetOrganizationEventImpl>
    implements _$$GetOrganizationEventImplCopyWith<$Res> {
  __$$GetOrganizationEventImplCopyWithImpl(_$GetOrganizationEventImpl _value,
      $Res Function(_$GetOrganizationEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of OranizationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetOrganizationEventImpl implements GetOrganizationEvent {
  const _$GetOrganizationEventImpl();

  @override
  String toString() {
    return 'OranizationEvent.getOrganizationEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrganizationEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrganizationEvent,
  }) {
    return getOrganizationEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrganizationEvent,
  }) {
    return getOrganizationEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrganizationEvent,
    required TResult orElse(),
  }) {
    if (getOrganizationEvent != null) {
      return getOrganizationEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOrganizationEvent value) getOrganizationEvent,
  }) {
    return getOrganizationEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOrganizationEvent value)? getOrganizationEvent,
  }) {
    return getOrganizationEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOrganizationEvent value)? getOrganizationEvent,
    required TResult orElse(),
  }) {
    if (getOrganizationEvent != null) {
      return getOrganizationEvent(this);
    }
    return orElse();
  }
}

abstract class GetOrganizationEvent implements OranizationEvent {
  const factory GetOrganizationEvent() = _$GetOrganizationEventImpl;
}

/// @nodoc
mixin _$OranizationState {
  OrganizationModel get organizationList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isFailure => throw _privateConstructorUsedError;

  /// Create a copy of OranizationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OranizationStateCopyWith<OranizationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OranizationStateCopyWith<$Res> {
  factory $OranizationStateCopyWith(
          OranizationState value, $Res Function(OranizationState) then) =
      _$OranizationStateCopyWithImpl<$Res, OranizationState>;
  @useResult
  $Res call(
      {OrganizationModel organizationList, bool isLoading, bool isFailure});
}

/// @nodoc
class _$OranizationStateCopyWithImpl<$Res, $Val extends OranizationState>
    implements $OranizationStateCopyWith<$Res> {
  _$OranizationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OranizationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organizationList = null,
    Object? isLoading = null,
    Object? isFailure = null,
  }) {
    return _then(_value.copyWith(
      organizationList: null == organizationList
          ? _value.organizationList
          : organizationList // ignore: cast_nullable_to_non_nullable
              as OrganizationModel,
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
abstract class _$$OranizationStateImplCopyWith<$Res>
    implements $OranizationStateCopyWith<$Res> {
  factory _$$OranizationStateImplCopyWith(_$OranizationStateImpl value,
          $Res Function(_$OranizationStateImpl) then) =
      __$$OranizationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {OrganizationModel organizationList, bool isLoading, bool isFailure});
}

/// @nodoc
class __$$OranizationStateImplCopyWithImpl<$Res>
    extends _$OranizationStateCopyWithImpl<$Res, _$OranizationStateImpl>
    implements _$$OranizationStateImplCopyWith<$Res> {
  __$$OranizationStateImplCopyWithImpl(_$OranizationStateImpl _value,
      $Res Function(_$OranizationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OranizationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organizationList = null,
    Object? isLoading = null,
    Object? isFailure = null,
  }) {
    return _then(_$OranizationStateImpl(
      organizationList: null == organizationList
          ? _value.organizationList
          : organizationList // ignore: cast_nullable_to_non_nullable
              as OrganizationModel,
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

class _$OranizationStateImpl implements _OranizationState {
  const _$OranizationStateImpl(
      {required this.organizationList,
      required this.isLoading,
      required this.isFailure});

  @override
  final OrganizationModel organizationList;
  @override
  final bool isLoading;
  @override
  final bool isFailure;

  @override
  String toString() {
    return 'OranizationState(organizationList: $organizationList, isLoading: $isLoading, isFailure: $isFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OranizationStateImpl &&
            (identical(other.organizationList, organizationList) ||
                other.organizationList == organizationList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isFailure, isFailure) ||
                other.isFailure == isFailure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, organizationList, isLoading, isFailure);

  /// Create a copy of OranizationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OranizationStateImplCopyWith<_$OranizationStateImpl> get copyWith =>
      __$$OranizationStateImplCopyWithImpl<_$OranizationStateImpl>(
          this, _$identity);
}

abstract class _OranizationState implements OranizationState {
  const factory _OranizationState(
      {required final OrganizationModel organizationList,
      required final bool isLoading,
      required final bool isFailure}) = _$OranizationStateImpl;

  @override
  OrganizationModel get organizationList;
  @override
  bool get isLoading;
  @override
  bool get isFailure;

  /// Create a copy of OranizationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OranizationStateImplCopyWith<_$OranizationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
