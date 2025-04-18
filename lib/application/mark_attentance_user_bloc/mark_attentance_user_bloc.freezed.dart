// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mark_attentance_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MarkAttentanceUserEvent {
  String get presentOrNot => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String presentOrNot) markattentance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String presentOrNot)? markattentance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String presentOrNot)? markattentance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MarkAttentance value) markattentance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MarkAttentance value)? markattentance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MarkAttentance value)? markattentance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of MarkAttentanceUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MarkAttentanceUserEventCopyWith<MarkAttentanceUserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkAttentanceUserEventCopyWith<$Res> {
  factory $MarkAttentanceUserEventCopyWith(MarkAttentanceUserEvent value,
          $Res Function(MarkAttentanceUserEvent) then) =
      _$MarkAttentanceUserEventCopyWithImpl<$Res, MarkAttentanceUserEvent>;
  @useResult
  $Res call({String presentOrNot});
}

/// @nodoc
class _$MarkAttentanceUserEventCopyWithImpl<$Res,
        $Val extends MarkAttentanceUserEvent>
    implements $MarkAttentanceUserEventCopyWith<$Res> {
  _$MarkAttentanceUserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MarkAttentanceUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? presentOrNot = null,
  }) {
    return _then(_value.copyWith(
      presentOrNot: null == presentOrNot
          ? _value.presentOrNot
          : presentOrNot // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarkAttentanceImplCopyWith<$Res>
    implements $MarkAttentanceUserEventCopyWith<$Res> {
  factory _$$MarkAttentanceImplCopyWith(_$MarkAttentanceImpl value,
          $Res Function(_$MarkAttentanceImpl) then) =
      __$$MarkAttentanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String presentOrNot});
}

/// @nodoc
class __$$MarkAttentanceImplCopyWithImpl<$Res>
    extends _$MarkAttentanceUserEventCopyWithImpl<$Res, _$MarkAttentanceImpl>
    implements _$$MarkAttentanceImplCopyWith<$Res> {
  __$$MarkAttentanceImplCopyWithImpl(
      _$MarkAttentanceImpl _value, $Res Function(_$MarkAttentanceImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarkAttentanceUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? presentOrNot = null,
  }) {
    return _then(_$MarkAttentanceImpl(
      presentOrNot: null == presentOrNot
          ? _value.presentOrNot
          : presentOrNot // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MarkAttentanceImpl implements MarkAttentance {
  const _$MarkAttentanceImpl({required this.presentOrNot});

  @override
  final String presentOrNot;

  @override
  String toString() {
    return 'MarkAttentanceUserEvent.markattentance(presentOrNot: $presentOrNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkAttentanceImpl &&
            (identical(other.presentOrNot, presentOrNot) ||
                other.presentOrNot == presentOrNot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, presentOrNot);

  /// Create a copy of MarkAttentanceUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkAttentanceImplCopyWith<_$MarkAttentanceImpl> get copyWith =>
      __$$MarkAttentanceImplCopyWithImpl<_$MarkAttentanceImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String presentOrNot) markattentance,
  }) {
    return markattentance(presentOrNot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String presentOrNot)? markattentance,
  }) {
    return markattentance?.call(presentOrNot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String presentOrNot)? markattentance,
    required TResult orElse(),
  }) {
    if (markattentance != null) {
      return markattentance(presentOrNot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MarkAttentance value) markattentance,
  }) {
    return markattentance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MarkAttentance value)? markattentance,
  }) {
    return markattentance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MarkAttentance value)? markattentance,
    required TResult orElse(),
  }) {
    if (markattentance != null) {
      return markattentance(this);
    }
    return orElse();
  }
}

abstract class MarkAttentance implements MarkAttentanceUserEvent {
  const factory MarkAttentance({required final String presentOrNot}) =
      _$MarkAttentanceImpl;

  @override
  String get presentOrNot;

  /// Create a copy of MarkAttentanceUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarkAttentanceImplCopyWith<_$MarkAttentanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MarkAttentanceUserState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isFailure => throw _privateConstructorUsedError;
  String get success => throw _privateConstructorUsedError;

  /// Create a copy of MarkAttentanceUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MarkAttentanceUserStateCopyWith<MarkAttentanceUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkAttentanceUserStateCopyWith<$Res> {
  factory $MarkAttentanceUserStateCopyWith(MarkAttentanceUserState value,
          $Res Function(MarkAttentanceUserState) then) =
      _$MarkAttentanceUserStateCopyWithImpl<$Res, MarkAttentanceUserState>;
  @useResult
  $Res call({bool isLoading, bool isFailure, String success});
}

/// @nodoc
class _$MarkAttentanceUserStateCopyWithImpl<$Res,
        $Val extends MarkAttentanceUserState>
    implements $MarkAttentanceUserStateCopyWith<$Res> {
  _$MarkAttentanceUserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MarkAttentanceUserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isFailure = null,
    Object? success = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailure: null == isFailure
          ? _value.isFailure
          : isFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarkAttentanceUserStateImplCopyWith<$Res>
    implements $MarkAttentanceUserStateCopyWith<$Res> {
  factory _$$MarkAttentanceUserStateImplCopyWith(
          _$MarkAttentanceUserStateImpl value,
          $Res Function(_$MarkAttentanceUserStateImpl) then) =
      __$$MarkAttentanceUserStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool isFailure, String success});
}

/// @nodoc
class __$$MarkAttentanceUserStateImplCopyWithImpl<$Res>
    extends _$MarkAttentanceUserStateCopyWithImpl<$Res,
        _$MarkAttentanceUserStateImpl>
    implements _$$MarkAttentanceUserStateImplCopyWith<$Res> {
  __$$MarkAttentanceUserStateImplCopyWithImpl(
      _$MarkAttentanceUserStateImpl _value,
      $Res Function(_$MarkAttentanceUserStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarkAttentanceUserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isFailure = null,
    Object? success = null,
  }) {
    return _then(_$MarkAttentanceUserStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailure: null == isFailure
          ? _value.isFailure
          : isFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MarkAttentanceUserStateImpl implements _MarkAttentanceUserState {
  const _$MarkAttentanceUserStateImpl(
      {required this.isLoading,
      required this.isFailure,
      required this.success});

  @override
  final bool isLoading;
  @override
  final bool isFailure;
  @override
  final String success;

  @override
  String toString() {
    return 'MarkAttentanceUserState(isLoading: $isLoading, isFailure: $isFailure, success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkAttentanceUserStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isFailure, isFailure) ||
                other.isFailure == isFailure) &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isFailure, success);

  /// Create a copy of MarkAttentanceUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkAttentanceUserStateImplCopyWith<_$MarkAttentanceUserStateImpl>
      get copyWith => __$$MarkAttentanceUserStateImplCopyWithImpl<
          _$MarkAttentanceUserStateImpl>(this, _$identity);
}

abstract class _MarkAttentanceUserState implements MarkAttentanceUserState {
  const factory _MarkAttentanceUserState(
      {required final bool isLoading,
      required final bool isFailure,
      required final String success}) = _$MarkAttentanceUserStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isFailure;
  @override
  String get success;

  /// Create a copy of MarkAttentanceUserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarkAttentanceUserStateImplCopyWith<_$MarkAttentanceUserStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
