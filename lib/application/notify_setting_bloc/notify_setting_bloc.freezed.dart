// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notify_setting_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotifySettingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getNotify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNotify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNotify,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNotify value) getNotify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNotify value)? getNotify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNotify value)? getNotify,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotifySettingEventCopyWith<$Res> {
  factory $NotifySettingEventCopyWith(
          NotifySettingEvent value, $Res Function(NotifySettingEvent) then) =
      _$NotifySettingEventCopyWithImpl<$Res, NotifySettingEvent>;
}

/// @nodoc
class _$NotifySettingEventCopyWithImpl<$Res, $Val extends NotifySettingEvent>
    implements $NotifySettingEventCopyWith<$Res> {
  _$NotifySettingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotifySettingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetNotifyImplCopyWith<$Res> {
  factory _$$GetNotifyImplCopyWith(
          _$GetNotifyImpl value, $Res Function(_$GetNotifyImpl) then) =
      __$$GetNotifyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetNotifyImplCopyWithImpl<$Res>
    extends _$NotifySettingEventCopyWithImpl<$Res, _$GetNotifyImpl>
    implements _$$GetNotifyImplCopyWith<$Res> {
  __$$GetNotifyImplCopyWithImpl(
      _$GetNotifyImpl _value, $Res Function(_$GetNotifyImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotifySettingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetNotifyImpl implements GetNotify {
  const _$GetNotifyImpl();

  @override
  String toString() {
    return 'NotifySettingEvent.getNotify()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetNotifyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getNotify,
  }) {
    return getNotify();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNotify,
  }) {
    return getNotify?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNotify,
    required TResult orElse(),
  }) {
    if (getNotify != null) {
      return getNotify();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNotify value) getNotify,
  }) {
    return getNotify(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNotify value)? getNotify,
  }) {
    return getNotify?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNotify value)? getNotify,
    required TResult orElse(),
  }) {
    if (getNotify != null) {
      return getNotify(this);
    }
    return orElse();
  }
}

abstract class GetNotify implements NotifySettingEvent {
  const factory GetNotify() = _$GetNotifyImpl;
}

/// @nodoc
mixin _$NotifySettingState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<NotifyModel> get notifyList => throw _privateConstructorUsedError;

  /// Create a copy of NotifySettingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotifySettingStateCopyWith<NotifySettingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotifySettingStateCopyWith<$Res> {
  factory $NotifySettingStateCopyWith(
          NotifySettingState value, $Res Function(NotifySettingState) then) =
      _$NotifySettingStateCopyWithImpl<$Res, NotifySettingState>;
  @useResult
  $Res call({bool isLoading, bool isError, List<NotifyModel> notifyList});
}

/// @nodoc
class _$NotifySettingStateCopyWithImpl<$Res, $Val extends NotifySettingState>
    implements $NotifySettingStateCopyWith<$Res> {
  _$NotifySettingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotifySettingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? notifyList = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      notifyList: null == notifyList
          ? _value.notifyList
          : notifyList // ignore: cast_nullable_to_non_nullable
              as List<NotifyModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotifySettingStateImplCopyWith<$Res>
    implements $NotifySettingStateCopyWith<$Res> {
  factory _$$NotifySettingStateImplCopyWith(_$NotifySettingStateImpl value,
          $Res Function(_$NotifySettingStateImpl) then) =
      __$$NotifySettingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool isError, List<NotifyModel> notifyList});
}

/// @nodoc
class __$$NotifySettingStateImplCopyWithImpl<$Res>
    extends _$NotifySettingStateCopyWithImpl<$Res, _$NotifySettingStateImpl>
    implements _$$NotifySettingStateImplCopyWith<$Res> {
  __$$NotifySettingStateImplCopyWithImpl(_$NotifySettingStateImpl _value,
      $Res Function(_$NotifySettingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotifySettingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? notifyList = null,
  }) {
    return _then(_$NotifySettingStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      notifyList: null == notifyList
          ? _value._notifyList
          : notifyList // ignore: cast_nullable_to_non_nullable
              as List<NotifyModel>,
    ));
  }
}

/// @nodoc

class _$NotifySettingStateImpl implements _NotifySettingState {
  const _$NotifySettingStateImpl(
      {required this.isLoading,
      required this.isError,
      required final List<NotifyModel> notifyList})
      : _notifyList = notifyList;

  @override
  final bool isLoading;
  @override
  final bool isError;
  final List<NotifyModel> _notifyList;
  @override
  List<NotifyModel> get notifyList {
    if (_notifyList is EqualUnmodifiableListView) return _notifyList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifyList);
  }

  @override
  String toString() {
    return 'NotifySettingState(isLoading: $isLoading, isError: $isError, notifyList: $notifyList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotifySettingStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality()
                .equals(other._notifyList, _notifyList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError,
      const DeepCollectionEquality().hash(_notifyList));

  /// Create a copy of NotifySettingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotifySettingStateImplCopyWith<_$NotifySettingStateImpl> get copyWith =>
      __$$NotifySettingStateImplCopyWithImpl<_$NotifySettingStateImpl>(
          this, _$identity);
}

abstract class _NotifySettingState implements NotifySettingState {
  const factory _NotifySettingState(
      {required final bool isLoading,
      required final bool isError,
      required final List<NotifyModel> notifyList}) = _$NotifySettingStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<NotifyModel> get notifyList;

  /// Create a copy of NotifySettingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotifySettingStateImplCopyWith<_$NotifySettingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
