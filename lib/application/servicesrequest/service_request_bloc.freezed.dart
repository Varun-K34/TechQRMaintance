// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_request_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ServiceRequestEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getServicesreq,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getServicesreq,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getServicesreq,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetservicesReq value) getServicesreq,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetservicesReq value)? getServicesreq,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetservicesReq value)? getServicesreq,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceRequestEventCopyWith<$Res> {
  factory $ServiceRequestEventCopyWith(
          ServiceRequestEvent value, $Res Function(ServiceRequestEvent) then) =
      _$ServiceRequestEventCopyWithImpl<$Res, ServiceRequestEvent>;
}

/// @nodoc
class _$ServiceRequestEventCopyWithImpl<$Res, $Val extends ServiceRequestEvent>
    implements $ServiceRequestEventCopyWith<$Res> {
  _$ServiceRequestEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceRequestEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetservicesReqImplCopyWith<$Res> {
  factory _$$GetservicesReqImplCopyWith(_$GetservicesReqImpl value,
          $Res Function(_$GetservicesReqImpl) then) =
      __$$GetservicesReqImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetservicesReqImplCopyWithImpl<$Res>
    extends _$ServiceRequestEventCopyWithImpl<$Res, _$GetservicesReqImpl>
    implements _$$GetservicesReqImplCopyWith<$Res> {
  __$$GetservicesReqImplCopyWithImpl(
      _$GetservicesReqImpl _value, $Res Function(_$GetservicesReqImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceRequestEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetservicesReqImpl implements GetservicesReq {
  const _$GetservicesReqImpl();

  @override
  String toString() {
    return 'ServiceRequestEvent.getServicesreq()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetservicesReqImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getServicesreq,
  }) {
    return getServicesreq();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getServicesreq,
  }) {
    return getServicesreq?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getServicesreq,
    required TResult orElse(),
  }) {
    if (getServicesreq != null) {
      return getServicesreq();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetservicesReq value) getServicesreq,
  }) {
    return getServicesreq(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetservicesReq value)? getServicesreq,
  }) {
    return getServicesreq?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetservicesReq value)? getServicesreq,
    required TResult orElse(),
  }) {
    if (getServicesreq != null) {
      return getServicesreq(this);
    }
    return orElse();
  }
}

abstract class GetservicesReq implements ServiceRequestEvent {
  const factory GetservicesReq() = _$GetservicesReqImpl;
}

/// @nodoc
mixin _$ServiceRequestState {
  List<ServicesModel> get servicelist => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isFailure => throw _privateConstructorUsedError;

  /// Create a copy of ServiceRequestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceRequestStateCopyWith<ServiceRequestState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceRequestStateCopyWith<$Res> {
  factory $ServiceRequestStateCopyWith(
          ServiceRequestState value, $Res Function(ServiceRequestState) then) =
      _$ServiceRequestStateCopyWithImpl<$Res, ServiceRequestState>;
  @useResult
  $Res call({List<ServicesModel> servicelist, bool isLoading, bool isFailure});
}

/// @nodoc
class _$ServiceRequestStateCopyWithImpl<$Res, $Val extends ServiceRequestState>
    implements $ServiceRequestStateCopyWith<$Res> {
  _$ServiceRequestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceRequestState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? servicelist = null,
    Object? isLoading = null,
    Object? isFailure = null,
  }) {
    return _then(_value.copyWith(
      servicelist: null == servicelist
          ? _value.servicelist
          : servicelist // ignore: cast_nullable_to_non_nullable
              as List<ServicesModel>,
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
abstract class _$$ServiceRequestStateImplCopyWith<$Res>
    implements $ServiceRequestStateCopyWith<$Res> {
  factory _$$ServiceRequestStateImplCopyWith(_$ServiceRequestStateImpl value,
          $Res Function(_$ServiceRequestStateImpl) then) =
      __$$ServiceRequestStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ServicesModel> servicelist, bool isLoading, bool isFailure});
}

/// @nodoc
class __$$ServiceRequestStateImplCopyWithImpl<$Res>
    extends _$ServiceRequestStateCopyWithImpl<$Res, _$ServiceRequestStateImpl>
    implements _$$ServiceRequestStateImplCopyWith<$Res> {
  __$$ServiceRequestStateImplCopyWithImpl(_$ServiceRequestStateImpl _value,
      $Res Function(_$ServiceRequestStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceRequestState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? servicelist = null,
    Object? isLoading = null,
    Object? isFailure = null,
  }) {
    return _then(_$ServiceRequestStateImpl(
      servicelist: null == servicelist
          ? _value._servicelist
          : servicelist // ignore: cast_nullable_to_non_nullable
              as List<ServicesModel>,
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

class _$ServiceRequestStateImpl implements _ServiceRequestState {
  const _$ServiceRequestStateImpl(
      {required final List<ServicesModel> servicelist,
      required this.isLoading,
      required this.isFailure})
      : _servicelist = servicelist;

  final List<ServicesModel> _servicelist;
  @override
  List<ServicesModel> get servicelist {
    if (_servicelist is EqualUnmodifiableListView) return _servicelist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_servicelist);
  }

  @override
  final bool isLoading;
  @override
  final bool isFailure;

  @override
  String toString() {
    return 'ServiceRequestState(servicelist: $servicelist, isLoading: $isLoading, isFailure: $isFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceRequestStateImpl &&
            const DeepCollectionEquality()
                .equals(other._servicelist, _servicelist) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isFailure, isFailure) ||
                other.isFailure == isFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_servicelist), isLoading, isFailure);

  /// Create a copy of ServiceRequestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceRequestStateImplCopyWith<_$ServiceRequestStateImpl> get copyWith =>
      __$$ServiceRequestStateImplCopyWithImpl<_$ServiceRequestStateImpl>(
          this, _$identity);
}

abstract class _ServiceRequestState implements ServiceRequestState {
  const factory _ServiceRequestState(
      {required final List<ServicesModel> servicelist,
      required final bool isLoading,
      required final bool isFailure}) = _$ServiceRequestStateImpl;

  @override
  List<ServicesModel> get servicelist;
  @override
  bool get isLoading;
  @override
  bool get isFailure;

  /// Create a copy of ServiceRequestState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceRequestStateImplCopyWith<_$ServiceRequestStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
