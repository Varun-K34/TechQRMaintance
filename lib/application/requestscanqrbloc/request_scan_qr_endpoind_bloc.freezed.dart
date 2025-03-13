// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_scan_qr_endpoind_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RequestScanQrEndpoindEvent {
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getQrdata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getQrdata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getQrdata,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetQrdata value) getQrdata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetQrdata value)? getQrdata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetQrdata value)? getQrdata,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of RequestScanQrEndpoindEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestScanQrEndpoindEventCopyWith<RequestScanQrEndpoindEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestScanQrEndpoindEventCopyWith<$Res> {
  factory $RequestScanQrEndpoindEventCopyWith(RequestScanQrEndpoindEvent value,
          $Res Function(RequestScanQrEndpoindEvent) then) =
      _$RequestScanQrEndpoindEventCopyWithImpl<$Res,
          RequestScanQrEndpoindEvent>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$RequestScanQrEndpoindEventCopyWithImpl<$Res,
        $Val extends RequestScanQrEndpoindEvent>
    implements $RequestScanQrEndpoindEventCopyWith<$Res> {
  _$RequestScanQrEndpoindEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestScanQrEndpoindEvent
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
abstract class _$$GetQrdataImplCopyWith<$Res>
    implements $RequestScanQrEndpoindEventCopyWith<$Res> {
  factory _$$GetQrdataImplCopyWith(
          _$GetQrdataImpl value, $Res Function(_$GetQrdataImpl) then) =
      __$$GetQrdataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$GetQrdataImplCopyWithImpl<$Res>
    extends _$RequestScanQrEndpoindEventCopyWithImpl<$Res, _$GetQrdataImpl>
    implements _$$GetQrdataImplCopyWith<$Res> {
  __$$GetQrdataImplCopyWithImpl(
      _$GetQrdataImpl _value, $Res Function(_$GetQrdataImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestScanQrEndpoindEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetQrdataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetQrdataImpl implements GetQrdata {
  const _$GetQrdataImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'RequestScanQrEndpoindEvent.getQrdata(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetQrdataImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of RequestScanQrEndpoindEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetQrdataImplCopyWith<_$GetQrdataImpl> get copyWith =>
      __$$GetQrdataImplCopyWithImpl<_$GetQrdataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getQrdata,
  }) {
    return getQrdata(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getQrdata,
  }) {
    return getQrdata?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getQrdata,
    required TResult orElse(),
  }) {
    if (getQrdata != null) {
      return getQrdata(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetQrdata value) getQrdata,
  }) {
    return getQrdata(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetQrdata value)? getQrdata,
  }) {
    return getQrdata?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetQrdata value)? getQrdata,
    required TResult orElse(),
  }) {
    if (getQrdata != null) {
      return getQrdata(this);
    }
    return orElse();
  }
}

abstract class GetQrdata implements RequestScanQrEndpoindEvent {
  const factory GetQrdata({required final String id}) = _$GetQrdataImpl;

  @override
  String get id;

  /// Create a copy of RequestScanQrEndpoindEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetQrdataImplCopyWith<_$GetQrdataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RequestScanQrEndpoindState {
  QrCode get qrData => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isFailure => throw _privateConstructorUsedError;

  /// Create a copy of RequestScanQrEndpoindState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestScanQrEndpoindStateCopyWith<RequestScanQrEndpoindState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestScanQrEndpoindStateCopyWith<$Res> {
  factory $RequestScanQrEndpoindStateCopyWith(RequestScanQrEndpoindState value,
          $Res Function(RequestScanQrEndpoindState) then) =
      _$RequestScanQrEndpoindStateCopyWithImpl<$Res,
          RequestScanQrEndpoindState>;
  @useResult
  $Res call({QrCode qrData, bool isLoading, bool isFailure});
}

/// @nodoc
class _$RequestScanQrEndpoindStateCopyWithImpl<$Res,
        $Val extends RequestScanQrEndpoindState>
    implements $RequestScanQrEndpoindStateCopyWith<$Res> {
  _$RequestScanQrEndpoindStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestScanQrEndpoindState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qrData = null,
    Object? isLoading = null,
    Object? isFailure = null,
  }) {
    return _then(_value.copyWith(
      qrData: null == qrData
          ? _value.qrData
          : qrData // ignore: cast_nullable_to_non_nullable
              as QrCode,
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
    implements $RequestScanQrEndpoindStateCopyWith<$Res> {
  factory _$$ComplaintblocStateImplCopyWith(_$ComplaintblocStateImpl value,
          $Res Function(_$ComplaintblocStateImpl) then) =
      __$$ComplaintblocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({QrCode qrData, bool isLoading, bool isFailure});
}

/// @nodoc
class __$$ComplaintblocStateImplCopyWithImpl<$Res>
    extends _$RequestScanQrEndpoindStateCopyWithImpl<$Res,
        _$ComplaintblocStateImpl>
    implements _$$ComplaintblocStateImplCopyWith<$Res> {
  __$$ComplaintblocStateImplCopyWithImpl(_$ComplaintblocStateImpl _value,
      $Res Function(_$ComplaintblocStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestScanQrEndpoindState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qrData = null,
    Object? isLoading = null,
    Object? isFailure = null,
  }) {
    return _then(_$ComplaintblocStateImpl(
      qrData: null == qrData
          ? _value.qrData
          : qrData // ignore: cast_nullable_to_non_nullable
              as QrCode,
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
      {required this.qrData, required this.isLoading, required this.isFailure});

  @override
  final QrCode qrData;
  @override
  final bool isLoading;
  @override
  final bool isFailure;

  @override
  String toString() {
    return 'RequestScanQrEndpoindState(qrData: $qrData, isLoading: $isLoading, isFailure: $isFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComplaintblocStateImpl &&
            (identical(other.qrData, qrData) || other.qrData == qrData) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isFailure, isFailure) ||
                other.isFailure == isFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, qrData, isLoading, isFailure);

  /// Create a copy of RequestScanQrEndpoindState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ComplaintblocStateImplCopyWith<_$ComplaintblocStateImpl> get copyWith =>
      __$$ComplaintblocStateImplCopyWithImpl<_$ComplaintblocStateImpl>(
          this, _$identity);
}

abstract class _ComplaintblocState implements RequestScanQrEndpoindState {
  const factory _ComplaintblocState(
      {required final QrCode qrData,
      required final bool isLoading,
      required final bool isFailure}) = _$ComplaintblocStateImpl;

  @override
  QrCode get qrData;
  @override
  bool get isLoading;
  @override
  bool get isFailure;

  /// Create a copy of RequestScanQrEndpoindState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ComplaintblocStateImplCopyWith<_$ComplaintblocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
