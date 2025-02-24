// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'maintenancehistory_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MaintenancehistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getmaintenencehistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getmaintenencehistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getmaintenencehistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Getmaintenencehistory value)
        getmaintenencehistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Getmaintenencehistory value)? getmaintenencehistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Getmaintenencehistory value)? getmaintenencehistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaintenancehistoryEventCopyWith<$Res> {
  factory $MaintenancehistoryEventCopyWith(MaintenancehistoryEvent value,
          $Res Function(MaintenancehistoryEvent) then) =
      _$MaintenancehistoryEventCopyWithImpl<$Res, MaintenancehistoryEvent>;
}

/// @nodoc
class _$MaintenancehistoryEventCopyWithImpl<$Res,
        $Val extends MaintenancehistoryEvent>
    implements $MaintenancehistoryEventCopyWith<$Res> {
  _$MaintenancehistoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MaintenancehistoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetmaintenencehistoryImplCopyWith<$Res> {
  factory _$$GetmaintenencehistoryImplCopyWith(
          _$GetmaintenencehistoryImpl value,
          $Res Function(_$GetmaintenencehistoryImpl) then) =
      __$$GetmaintenencehistoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetmaintenencehistoryImplCopyWithImpl<$Res>
    extends _$MaintenancehistoryEventCopyWithImpl<$Res,
        _$GetmaintenencehistoryImpl>
    implements _$$GetmaintenencehistoryImplCopyWith<$Res> {
  __$$GetmaintenencehistoryImplCopyWithImpl(_$GetmaintenencehistoryImpl _value,
      $Res Function(_$GetmaintenencehistoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of MaintenancehistoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetmaintenencehistoryImpl implements Getmaintenencehistory {
  const _$GetmaintenencehistoryImpl();

  @override
  String toString() {
    return 'MaintenancehistoryEvent.getmaintenencehistory()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetmaintenencehistoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getmaintenencehistory,
  }) {
    return getmaintenencehistory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getmaintenencehistory,
  }) {
    return getmaintenencehistory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getmaintenencehistory,
    required TResult orElse(),
  }) {
    if (getmaintenencehistory != null) {
      return getmaintenencehistory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Getmaintenencehistory value)
        getmaintenencehistory,
  }) {
    return getmaintenencehistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Getmaintenencehistory value)? getmaintenencehistory,
  }) {
    return getmaintenencehistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Getmaintenencehistory value)? getmaintenencehistory,
    required TResult orElse(),
  }) {
    if (getmaintenencehistory != null) {
      return getmaintenencehistory(this);
    }
    return orElse();
  }
}

abstract class Getmaintenencehistory implements MaintenancehistoryEvent {
  const factory Getmaintenencehistory() = _$GetmaintenencehistoryImpl;
}

/// @nodoc
mixin _$MaintenancehistoryState {
  List<HisData> get history => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<MainFailurs, List<HisData>>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  /// Create a copy of MaintenancehistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MaintenancehistoryStateCopyWith<MaintenancehistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaintenancehistoryStateCopyWith<$Res> {
  factory $MaintenancehistoryStateCopyWith(MaintenancehistoryState value,
          $Res Function(MaintenancehistoryState) then) =
      _$MaintenancehistoryStateCopyWithImpl<$Res, MaintenancehistoryState>;
  @useResult
  $Res call(
      {List<HisData> history,
      bool isLoading,
      Option<Either<MainFailurs, List<HisData>>> failureOrSuccessOption});
}

/// @nodoc
class _$MaintenancehistoryStateCopyWithImpl<$Res,
        $Val extends MaintenancehistoryState>
    implements $MaintenancehistoryStateCopyWith<$Res> {
  _$MaintenancehistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MaintenancehistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? history = null,
    Object? isLoading = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      history: null == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<HisData>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailurs, List<HisData>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MaintenancehistoryStateImplCopyWith<$Res>
    implements $MaintenancehistoryStateCopyWith<$Res> {
  factory _$$MaintenancehistoryStateImplCopyWith(
          _$MaintenancehistoryStateImpl value,
          $Res Function(_$MaintenancehistoryStateImpl) then) =
      __$$MaintenancehistoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<HisData> history,
      bool isLoading,
      Option<Either<MainFailurs, List<HisData>>> failureOrSuccessOption});
}

/// @nodoc
class __$$MaintenancehistoryStateImplCopyWithImpl<$Res>
    extends _$MaintenancehistoryStateCopyWithImpl<$Res,
        _$MaintenancehistoryStateImpl>
    implements _$$MaintenancehistoryStateImplCopyWith<$Res> {
  __$$MaintenancehistoryStateImplCopyWithImpl(
      _$MaintenancehistoryStateImpl _value,
      $Res Function(_$MaintenancehistoryStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MaintenancehistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? history = null,
    Object? isLoading = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$MaintenancehistoryStateImpl(
      history: null == history
          ? _value._history
          : history // ignore: cast_nullable_to_non_nullable
              as List<HisData>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailurs, List<HisData>>>,
    ));
  }
}

/// @nodoc

class _$MaintenancehistoryStateImpl implements _MaintenancehistoryState {
  const _$MaintenancehistoryStateImpl(
      {required final List<HisData> history,
      required this.isLoading,
      required this.failureOrSuccessOption})
      : _history = history;

  final List<HisData> _history;
  @override
  List<HisData> get history {
    if (_history is EqualUnmodifiableListView) return _history;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_history);
  }

  @override
  final bool isLoading;
  @override
  final Option<Either<MainFailurs, List<HisData>>> failureOrSuccessOption;

  @override
  String toString() {
    return 'MaintenancehistoryState(history: $history, isLoading: $isLoading, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaintenancehistoryStateImpl &&
            const DeepCollectionEquality().equals(other._history, _history) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_history),
      isLoading,
      failureOrSuccessOption);

  /// Create a copy of MaintenancehistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MaintenancehistoryStateImplCopyWith<_$MaintenancehistoryStateImpl>
      get copyWith => __$$MaintenancehistoryStateImplCopyWithImpl<
          _$MaintenancehistoryStateImpl>(this, _$identity);
}

abstract class _MaintenancehistoryState implements MaintenancehistoryState {
  const factory _MaintenancehistoryState(
      {required final List<HisData> history,
      required final bool isLoading,
      required final Option<Either<MainFailurs, List<HisData>>>
          failureOrSuccessOption}) = _$MaintenancehistoryStateImpl;

  @override
  List<HisData> get history;
  @override
  bool get isLoading;
  @override
  Option<Either<MainFailurs, List<HisData>>> get failureOrSuccessOption;

  /// Create a copy of MaintenancehistoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MaintenancehistoryStateImplCopyWith<_$MaintenancehistoryStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
