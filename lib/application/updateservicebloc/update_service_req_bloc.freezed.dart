// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_service_req_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateServiceReqEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, ServicesModel model) updateService,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, ServicesModel model)? updateService,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, ServicesModel model)? updateService,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateService value) updateService,
    required TResult Function(Reset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateService value)? updateService,
    TResult? Function(Reset value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateService value)? updateService,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateServiceReqEventCopyWith<$Res> {
  factory $UpdateServiceReqEventCopyWith(UpdateServiceReqEvent value,
          $Res Function(UpdateServiceReqEvent) then) =
      _$UpdateServiceReqEventCopyWithImpl<$Res, UpdateServiceReqEvent>;
}

/// @nodoc
class _$UpdateServiceReqEventCopyWithImpl<$Res,
        $Val extends UpdateServiceReqEvent>
    implements $UpdateServiceReqEventCopyWith<$Res> {
  _$UpdateServiceReqEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateServiceReqEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UpdateServiceImplCopyWith<$Res> {
  factory _$$UpdateServiceImplCopyWith(
          _$UpdateServiceImpl value, $Res Function(_$UpdateServiceImpl) then) =
      __$$UpdateServiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, ServicesModel model});
}

/// @nodoc
class __$$UpdateServiceImplCopyWithImpl<$Res>
    extends _$UpdateServiceReqEventCopyWithImpl<$Res, _$UpdateServiceImpl>
    implements _$$UpdateServiceImplCopyWith<$Res> {
  __$$UpdateServiceImplCopyWithImpl(
      _$UpdateServiceImpl _value, $Res Function(_$UpdateServiceImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateServiceReqEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? model = null,
  }) {
    return _then(_$UpdateServiceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ServicesModel,
    ));
  }
}

/// @nodoc

class _$UpdateServiceImpl implements UpdateService {
  const _$UpdateServiceImpl({required this.id, required this.model});

  @override
  final String id;
  @override
  final ServicesModel model;

  @override
  String toString() {
    return 'UpdateServiceReqEvent.updateService(id: $id, model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateServiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, model);

  /// Create a copy of UpdateServiceReqEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateServiceImplCopyWith<_$UpdateServiceImpl> get copyWith =>
      __$$UpdateServiceImplCopyWithImpl<_$UpdateServiceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, ServicesModel model) updateService,
    required TResult Function() reset,
  }) {
    return updateService(id, model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, ServicesModel model)? updateService,
    TResult? Function()? reset,
  }) {
    return updateService?.call(id, model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, ServicesModel model)? updateService,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (updateService != null) {
      return updateService(id, model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateService value) updateService,
    required TResult Function(Reset value) reset,
  }) {
    return updateService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateService value)? updateService,
    TResult? Function(Reset value)? reset,
  }) {
    return updateService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateService value)? updateService,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (updateService != null) {
      return updateService(this);
    }
    return orElse();
  }
}

abstract class UpdateService implements UpdateServiceReqEvent {
  const factory UpdateService(
      {required final String id,
      required final ServicesModel model}) = _$UpdateServiceImpl;

  String get id;
  ServicesModel get model;

  /// Create a copy of UpdateServiceReqEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateServiceImplCopyWith<_$UpdateServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetImplCopyWith<$Res> {
  factory _$$ResetImplCopyWith(
          _$ResetImpl value, $Res Function(_$ResetImpl) then) =
      __$$ResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetImplCopyWithImpl<$Res>
    extends _$UpdateServiceReqEventCopyWithImpl<$Res, _$ResetImpl>
    implements _$$ResetImplCopyWith<$Res> {
  __$$ResetImplCopyWithImpl(
      _$ResetImpl _value, $Res Function(_$ResetImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateServiceReqEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetImpl implements Reset {
  const _$ResetImpl();

  @override
  String toString() {
    return 'UpdateServiceReqEvent.reset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, ServicesModel model) updateService,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, ServicesModel model)? updateService,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, ServicesModel model)? updateService,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateService value) updateService,
    required TResult Function(Reset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateService value)? updateService,
    TResult? Function(Reset value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateService value)? updateService,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class Reset implements UpdateServiceReqEvent {
  const factory Reset() = _$ResetImpl;
}

/// @nodoc
mixin _$UpdateServiceReqState {
  String get respons => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isFailure => throw _privateConstructorUsedError;

  /// Create a copy of UpdateServiceReqState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateServiceReqStateCopyWith<UpdateServiceReqState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateServiceReqStateCopyWith<$Res> {
  factory $UpdateServiceReqStateCopyWith(UpdateServiceReqState value,
          $Res Function(UpdateServiceReqState) then) =
      _$UpdateServiceReqStateCopyWithImpl<$Res, UpdateServiceReqState>;
  @useResult
  $Res call({String respons, bool isLoading, bool isFailure});
}

/// @nodoc
class _$UpdateServiceReqStateCopyWithImpl<$Res,
        $Val extends UpdateServiceReqState>
    implements $UpdateServiceReqStateCopyWith<$Res> {
  _$UpdateServiceReqStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateServiceReqState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? respons = null,
    Object? isLoading = null,
    Object? isFailure = null,
  }) {
    return _then(_value.copyWith(
      respons: null == respons
          ? _value.respons
          : respons // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$UpdateServiceReqStateImplCopyWith<$Res>
    implements $UpdateServiceReqStateCopyWith<$Res> {
  factory _$$UpdateServiceReqStateImplCopyWith(
          _$UpdateServiceReqStateImpl value,
          $Res Function(_$UpdateServiceReqStateImpl) then) =
      __$$UpdateServiceReqStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String respons, bool isLoading, bool isFailure});
}

/// @nodoc
class __$$UpdateServiceReqStateImplCopyWithImpl<$Res>
    extends _$UpdateServiceReqStateCopyWithImpl<$Res,
        _$UpdateServiceReqStateImpl>
    implements _$$UpdateServiceReqStateImplCopyWith<$Res> {
  __$$UpdateServiceReqStateImplCopyWithImpl(_$UpdateServiceReqStateImpl _value,
      $Res Function(_$UpdateServiceReqStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateServiceReqState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? respons = null,
    Object? isLoading = null,
    Object? isFailure = null,
  }) {
    return _then(_$UpdateServiceReqStateImpl(
      respons: null == respons
          ? _value.respons
          : respons // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$UpdateServiceReqStateImpl implements _UpdateServiceReqState {
  const _$UpdateServiceReqStateImpl(
      {required this.respons,
      required this.isLoading,
      required this.isFailure});

  @override
  final String respons;
  @override
  final bool isLoading;
  @override
  final bool isFailure;

  @override
  String toString() {
    return 'UpdateServiceReqState(respons: $respons, isLoading: $isLoading, isFailure: $isFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateServiceReqStateImpl &&
            (identical(other.respons, respons) || other.respons == respons) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isFailure, isFailure) ||
                other.isFailure == isFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, respons, isLoading, isFailure);

  /// Create a copy of UpdateServiceReqState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateServiceReqStateImplCopyWith<_$UpdateServiceReqStateImpl>
      get copyWith => __$$UpdateServiceReqStateImplCopyWithImpl<
          _$UpdateServiceReqStateImpl>(this, _$identity);
}

abstract class _UpdateServiceReqState implements UpdateServiceReqState {
  const factory _UpdateServiceReqState(
      {required final String respons,
      required final bool isLoading,
      required final bool isFailure}) = _$UpdateServiceReqStateImpl;

  @override
  String get respons;
  @override
  bool get isLoading;
  @override
  bool get isFailure;

  /// Create a copy of UpdateServiceReqState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateServiceReqStateImplCopyWith<_$UpdateServiceReqStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
