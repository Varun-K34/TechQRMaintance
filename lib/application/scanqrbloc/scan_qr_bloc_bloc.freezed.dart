// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scan_qr_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScanQrBlocEvent {
  String? get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? id) getScanData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? id)? getScanData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? id)? getScanData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetScanData value) getScanData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetScanData value)? getScanData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetScanData value)? getScanData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ScanQrBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScanQrBlocEventCopyWith<ScanQrBlocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanQrBlocEventCopyWith<$Res> {
  factory $ScanQrBlocEventCopyWith(
          ScanQrBlocEvent value, $Res Function(ScanQrBlocEvent) then) =
      _$ScanQrBlocEventCopyWithImpl<$Res, ScanQrBlocEvent>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$ScanQrBlocEventCopyWithImpl<$Res, $Val extends ScanQrBlocEvent>
    implements $ScanQrBlocEventCopyWith<$Res> {
  _$ScanQrBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScanQrBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetScanDataImplCopyWith<$Res>
    implements $ScanQrBlocEventCopyWith<$Res> {
  factory _$$GetScanDataImplCopyWith(
          _$GetScanDataImpl value, $Res Function(_$GetScanDataImpl) then) =
      __$$GetScanDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$GetScanDataImplCopyWithImpl<$Res>
    extends _$ScanQrBlocEventCopyWithImpl<$Res, _$GetScanDataImpl>
    implements _$$GetScanDataImplCopyWith<$Res> {
  __$$GetScanDataImplCopyWithImpl(
      _$GetScanDataImpl _value, $Res Function(_$GetScanDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScanQrBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$GetScanDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetScanDataImpl implements GetScanData {
  const _$GetScanDataImpl({required this.id});

  @override
  final String? id;

  @override
  String toString() {
    return 'ScanQrBlocEvent.getScanData(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetScanDataImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ScanQrBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetScanDataImplCopyWith<_$GetScanDataImpl> get copyWith =>
      __$$GetScanDataImplCopyWithImpl<_$GetScanDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? id) getScanData,
  }) {
    return getScanData(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? id)? getScanData,
  }) {
    return getScanData?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? id)? getScanData,
    required TResult orElse(),
  }) {
    if (getScanData != null) {
      return getScanData(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetScanData value) getScanData,
  }) {
    return getScanData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetScanData value)? getScanData,
  }) {
    return getScanData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetScanData value)? getScanData,
    required TResult orElse(),
  }) {
    if (getScanData != null) {
      return getScanData(this);
    }
    return orElse();
  }
}

abstract class GetScanData implements ScanQrBlocEvent {
  const factory GetScanData({required final String? id}) = _$GetScanDataImpl;

  @override
  String? get id;

  /// Create a copy of ScanQrBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetScanDataImplCopyWith<_$GetScanDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScanQrBlocState {
  ScanQrModel get scanData => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isFailure => throw _privateConstructorUsedError;

  /// Create a copy of ScanQrBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScanQrBlocStateCopyWith<ScanQrBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanQrBlocStateCopyWith<$Res> {
  factory $ScanQrBlocStateCopyWith(
          ScanQrBlocState value, $Res Function(ScanQrBlocState) then) =
      _$ScanQrBlocStateCopyWithImpl<$Res, ScanQrBlocState>;
  @useResult
  $Res call({ScanQrModel scanData, bool isLoading, bool isFailure});
}

/// @nodoc
class _$ScanQrBlocStateCopyWithImpl<$Res, $Val extends ScanQrBlocState>
    implements $ScanQrBlocStateCopyWith<$Res> {
  _$ScanQrBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScanQrBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scanData = null,
    Object? isLoading = null,
    Object? isFailure = null,
  }) {
    return _then(_value.copyWith(
      scanData: null == scanData
          ? _value.scanData
          : scanData // ignore: cast_nullable_to_non_nullable
              as ScanQrModel,
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
abstract class _$$ScanQrBlocStateImplCopyWith<$Res>
    implements $ScanQrBlocStateCopyWith<$Res> {
  factory _$$ScanQrBlocStateImplCopyWith(_$ScanQrBlocStateImpl value,
          $Res Function(_$ScanQrBlocStateImpl) then) =
      __$$ScanQrBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ScanQrModel scanData, bool isLoading, bool isFailure});
}

/// @nodoc
class __$$ScanQrBlocStateImplCopyWithImpl<$Res>
    extends _$ScanQrBlocStateCopyWithImpl<$Res, _$ScanQrBlocStateImpl>
    implements _$$ScanQrBlocStateImplCopyWith<$Res> {
  __$$ScanQrBlocStateImplCopyWithImpl(
      _$ScanQrBlocStateImpl _value, $Res Function(_$ScanQrBlocStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScanQrBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scanData = null,
    Object? isLoading = null,
    Object? isFailure = null,
  }) {
    return _then(_$ScanQrBlocStateImpl(
      scanData: null == scanData
          ? _value.scanData
          : scanData // ignore: cast_nullable_to_non_nullable
              as ScanQrModel,
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

class _$ScanQrBlocStateImpl implements _ScanQrBlocState {
  const _$ScanQrBlocStateImpl(
      {required this.scanData,
      required this.isLoading,
      required this.isFailure});

  @override
  final ScanQrModel scanData;
  @override
  final bool isLoading;
  @override
  final bool isFailure;

  @override
  String toString() {
    return 'ScanQrBlocState(scanData: $scanData, isLoading: $isLoading, isFailure: $isFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScanQrBlocStateImpl &&
            (identical(other.scanData, scanData) ||
                other.scanData == scanData) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isFailure, isFailure) ||
                other.isFailure == isFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, scanData, isLoading, isFailure);

  /// Create a copy of ScanQrBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScanQrBlocStateImplCopyWith<_$ScanQrBlocStateImpl> get copyWith =>
      __$$ScanQrBlocStateImplCopyWithImpl<_$ScanQrBlocStateImpl>(
          this, _$identity);
}

abstract class _ScanQrBlocState implements ScanQrBlocState {
  const factory _ScanQrBlocState(
      {required final ScanQrModel scanData,
      required final bool isLoading,
      required final bool isFailure}) = _$ScanQrBlocStateImpl;

  @override
  ScanQrModel get scanData;
  @override
  bool get isLoading;
  @override
  bool get isFailure;

  /// Create a copy of ScanQrBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScanQrBlocStateImplCopyWith<_$ScanQrBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
