// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deviceregbloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeviceregblocEvent {
  DeviceModelSaas get model => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DeviceModelSaas model) regDevice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DeviceModelSaas model)? regDevice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DeviceModelSaas model)? regDevice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegDevice value) regDevice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegDevice value)? regDevice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegDevice value)? regDevice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of DeviceregblocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeviceregblocEventCopyWith<DeviceregblocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceregblocEventCopyWith<$Res> {
  factory $DeviceregblocEventCopyWith(
          DeviceregblocEvent value, $Res Function(DeviceregblocEvent) then) =
      _$DeviceregblocEventCopyWithImpl<$Res, DeviceregblocEvent>;
  @useResult
  $Res call({DeviceModelSaas model});
}

/// @nodoc
class _$DeviceregblocEventCopyWithImpl<$Res, $Val extends DeviceregblocEvent>
    implements $DeviceregblocEventCopyWith<$Res> {
  _$DeviceregblocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeviceregblocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as DeviceModelSaas,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegDeviceImplCopyWith<$Res>
    implements $DeviceregblocEventCopyWith<$Res> {
  factory _$$RegDeviceImplCopyWith(
          _$RegDeviceImpl value, $Res Function(_$RegDeviceImpl) then) =
      __$$RegDeviceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DeviceModelSaas model});
}

/// @nodoc
class __$$RegDeviceImplCopyWithImpl<$Res>
    extends _$DeviceregblocEventCopyWithImpl<$Res, _$RegDeviceImpl>
    implements _$$RegDeviceImplCopyWith<$Res> {
  __$$RegDeviceImplCopyWithImpl(
      _$RegDeviceImpl _value, $Res Function(_$RegDeviceImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceregblocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$RegDeviceImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as DeviceModelSaas,
    ));
  }
}

/// @nodoc

class _$RegDeviceImpl implements RegDevice {
  const _$RegDeviceImpl({required this.model});

  @override
  final DeviceModelSaas model;

  @override
  String toString() {
    return 'DeviceregblocEvent.regDevice(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegDeviceImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  /// Create a copy of DeviceregblocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegDeviceImplCopyWith<_$RegDeviceImpl> get copyWith =>
      __$$RegDeviceImplCopyWithImpl<_$RegDeviceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DeviceModelSaas model) regDevice,
  }) {
    return regDevice(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DeviceModelSaas model)? regDevice,
  }) {
    return regDevice?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DeviceModelSaas model)? regDevice,
    required TResult orElse(),
  }) {
    if (regDevice != null) {
      return regDevice(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegDevice value) regDevice,
  }) {
    return regDevice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegDevice value)? regDevice,
  }) {
    return regDevice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegDevice value)? regDevice,
    required TResult orElse(),
  }) {
    if (regDevice != null) {
      return regDevice(this);
    }
    return orElse();
  }
}

abstract class RegDevice implements DeviceregblocEvent {
  const factory RegDevice({required final DeviceModelSaas model}) =
      _$RegDeviceImpl;

  @override
  DeviceModelSaas get model;

  /// Create a copy of DeviceregblocEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegDeviceImplCopyWith<_$RegDeviceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeviceregblocState {
  String get text => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isFailure => throw _privateConstructorUsedError;

  /// Create a copy of DeviceregblocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeviceregblocStateCopyWith<DeviceregblocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceregblocStateCopyWith<$Res> {
  factory $DeviceregblocStateCopyWith(
          DeviceregblocState value, $Res Function(DeviceregblocState) then) =
      _$DeviceregblocStateCopyWithImpl<$Res, DeviceregblocState>;
  @useResult
  $Res call({String text, bool isLoading, bool isFailure});
}

/// @nodoc
class _$DeviceregblocStateCopyWithImpl<$Res, $Val extends DeviceregblocState>
    implements $DeviceregblocStateCopyWith<$Res> {
  _$DeviceregblocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeviceregblocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? isLoading = null,
    Object? isFailure = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
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
abstract class _$$DeviceregblocStateImplCopyWith<$Res>
    implements $DeviceregblocStateCopyWith<$Res> {
  factory _$$DeviceregblocStateImplCopyWith(_$DeviceregblocStateImpl value,
          $Res Function(_$DeviceregblocStateImpl) then) =
      __$$DeviceregblocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, bool isLoading, bool isFailure});
}

/// @nodoc
class __$$DeviceregblocStateImplCopyWithImpl<$Res>
    extends _$DeviceregblocStateCopyWithImpl<$Res, _$DeviceregblocStateImpl>
    implements _$$DeviceregblocStateImplCopyWith<$Res> {
  __$$DeviceregblocStateImplCopyWithImpl(_$DeviceregblocStateImpl _value,
      $Res Function(_$DeviceregblocStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceregblocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? isLoading = null,
    Object? isFailure = null,
  }) {
    return _then(_$DeviceregblocStateImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
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

class _$DeviceregblocStateImpl implements _DeviceregblocState {
  const _$DeviceregblocStateImpl(
      {required this.text, required this.isLoading, required this.isFailure});

  @override
  final String text;
  @override
  final bool isLoading;
  @override
  final bool isFailure;

  @override
  String toString() {
    return 'DeviceregblocState(text: $text, isLoading: $isLoading, isFailure: $isFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceregblocStateImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isFailure, isFailure) ||
                other.isFailure == isFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, isLoading, isFailure);

  /// Create a copy of DeviceregblocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceregblocStateImplCopyWith<_$DeviceregblocStateImpl> get copyWith =>
      __$$DeviceregblocStateImplCopyWithImpl<_$DeviceregblocStateImpl>(
          this, _$identity);
}

abstract class _DeviceregblocState implements DeviceregblocState {
  const factory _DeviceregblocState(
      {required final String text,
      required final bool isLoading,
      required final bool isFailure}) = _$DeviceregblocStateImpl;

  @override
  String get text;
  @override
  bool get isLoading;
  @override
  bool get isFailure;

  /// Create a copy of DeviceregblocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeviceregblocStateImplCopyWith<_$DeviceregblocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
