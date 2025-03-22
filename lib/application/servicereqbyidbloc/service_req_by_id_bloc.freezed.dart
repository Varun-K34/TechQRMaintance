// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_req_by_id_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ServiceReqByIdEvent {
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getservicebyid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getservicebyid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getservicebyid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Getservicebyid value) getservicebyid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Getservicebyid value)? getservicebyid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Getservicebyid value)? getservicebyid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ServiceReqByIdEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceReqByIdEventCopyWith<ServiceReqByIdEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceReqByIdEventCopyWith<$Res> {
  factory $ServiceReqByIdEventCopyWith(
          ServiceReqByIdEvent value, $Res Function(ServiceReqByIdEvent) then) =
      _$ServiceReqByIdEventCopyWithImpl<$Res, ServiceReqByIdEvent>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$ServiceReqByIdEventCopyWithImpl<$Res, $Val extends ServiceReqByIdEvent>
    implements $ServiceReqByIdEventCopyWith<$Res> {
  _$ServiceReqByIdEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceReqByIdEvent
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
abstract class _$$GetservicebyidImplCopyWith<$Res>
    implements $ServiceReqByIdEventCopyWith<$Res> {
  factory _$$GetservicebyidImplCopyWith(_$GetservicebyidImpl value,
          $Res Function(_$GetservicebyidImpl) then) =
      __$$GetservicebyidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$GetservicebyidImplCopyWithImpl<$Res>
    extends _$ServiceReqByIdEventCopyWithImpl<$Res, _$GetservicebyidImpl>
    implements _$$GetservicebyidImplCopyWith<$Res> {
  __$$GetservicebyidImplCopyWithImpl(
      _$GetservicebyidImpl _value, $Res Function(_$GetservicebyidImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceReqByIdEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetservicebyidImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetservicebyidImpl implements Getservicebyid {
  const _$GetservicebyidImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'ServiceReqByIdEvent.getservicebyid(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetservicebyidImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ServiceReqByIdEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetservicebyidImplCopyWith<_$GetservicebyidImpl> get copyWith =>
      __$$GetservicebyidImplCopyWithImpl<_$GetservicebyidImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getservicebyid,
  }) {
    return getservicebyid(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getservicebyid,
  }) {
    return getservicebyid?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getservicebyid,
    required TResult orElse(),
  }) {
    if (getservicebyid != null) {
      return getservicebyid(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Getservicebyid value) getservicebyid,
  }) {
    return getservicebyid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Getservicebyid value)? getservicebyid,
  }) {
    return getservicebyid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Getservicebyid value)? getservicebyid,
    required TResult orElse(),
  }) {
    if (getservicebyid != null) {
      return getservicebyid(this);
    }
    return orElse();
  }
}

abstract class Getservicebyid implements ServiceReqByIdEvent {
  const factory Getservicebyid({required final String id}) =
      _$GetservicebyidImpl;

  @override
  String get id;

  /// Create a copy of ServiceReqByIdEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetservicebyidImplCopyWith<_$GetservicebyidImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ServiceReqByIdState {
  ServicesModel get servicesModel => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isFailurs => throw _privateConstructorUsedError;

  /// Create a copy of ServiceReqByIdState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceReqByIdStateCopyWith<ServiceReqByIdState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceReqByIdStateCopyWith<$Res> {
  factory $ServiceReqByIdStateCopyWith(
          ServiceReqByIdState value, $Res Function(ServiceReqByIdState) then) =
      _$ServiceReqByIdStateCopyWithImpl<$Res, ServiceReqByIdState>;
  @useResult
  $Res call({ServicesModel servicesModel, bool isLoading, bool isFailurs});
}

/// @nodoc
class _$ServiceReqByIdStateCopyWithImpl<$Res, $Val extends ServiceReqByIdState>
    implements $ServiceReqByIdStateCopyWith<$Res> {
  _$ServiceReqByIdStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceReqByIdState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? servicesModel = null,
    Object? isLoading = null,
    Object? isFailurs = null,
  }) {
    return _then(_value.copyWith(
      servicesModel: null == servicesModel
          ? _value.servicesModel
          : servicesModel // ignore: cast_nullable_to_non_nullable
              as ServicesModel,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailurs: null == isFailurs
          ? _value.isFailurs
          : isFailurs // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceReqByIdStateImplCopyWith<$Res>
    implements $ServiceReqByIdStateCopyWith<$Res> {
  factory _$$ServiceReqByIdStateImplCopyWith(_$ServiceReqByIdStateImpl value,
          $Res Function(_$ServiceReqByIdStateImpl) then) =
      __$$ServiceReqByIdStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ServicesModel servicesModel, bool isLoading, bool isFailurs});
}

/// @nodoc
class __$$ServiceReqByIdStateImplCopyWithImpl<$Res>
    extends _$ServiceReqByIdStateCopyWithImpl<$Res, _$ServiceReqByIdStateImpl>
    implements _$$ServiceReqByIdStateImplCopyWith<$Res> {
  __$$ServiceReqByIdStateImplCopyWithImpl(_$ServiceReqByIdStateImpl _value,
      $Res Function(_$ServiceReqByIdStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceReqByIdState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? servicesModel = null,
    Object? isLoading = null,
    Object? isFailurs = null,
  }) {
    return _then(_$ServiceReqByIdStateImpl(
      servicesModel: null == servicesModel
          ? _value.servicesModel
          : servicesModel // ignore: cast_nullable_to_non_nullable
              as ServicesModel,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailurs: null == isFailurs
          ? _value.isFailurs
          : isFailurs // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ServiceReqByIdStateImpl implements _ServiceReqByIdState {
  const _$ServiceReqByIdStateImpl(
      {required this.servicesModel,
      required this.isLoading,
      required this.isFailurs});

  @override
  final ServicesModel servicesModel;
  @override
  final bool isLoading;
  @override
  final bool isFailurs;

  @override
  String toString() {
    return 'ServiceReqByIdState(servicesModel: $servicesModel, isLoading: $isLoading, isFailurs: $isFailurs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceReqByIdStateImpl &&
            (identical(other.servicesModel, servicesModel) ||
                other.servicesModel == servicesModel) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isFailurs, isFailurs) ||
                other.isFailurs == isFailurs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, servicesModel, isLoading, isFailurs);

  /// Create a copy of ServiceReqByIdState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceReqByIdStateImplCopyWith<_$ServiceReqByIdStateImpl> get copyWith =>
      __$$ServiceReqByIdStateImplCopyWithImpl<_$ServiceReqByIdStateImpl>(
          this, _$identity);
}

abstract class _ServiceReqByIdState implements ServiceReqByIdState {
  const factory _ServiceReqByIdState(
      {required final ServicesModel servicesModel,
      required final bool isLoading,
      required final bool isFailurs}) = _$ServiceReqByIdStateImpl;

  @override
  ServicesModel get servicesModel;
  @override
  bool get isLoading;
  @override
  bool get isFailurs;

  /// Create a copy of ServiceReqByIdState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceReqByIdStateImplCopyWith<_$ServiceReqByIdStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
