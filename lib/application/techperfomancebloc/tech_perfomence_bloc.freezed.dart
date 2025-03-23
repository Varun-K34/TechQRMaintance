// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tech_perfomence_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TechPerfomenceEvent {
  String get techid => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String techid) getTechPerfomance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String techid)? getTechPerfomance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String techid)? getTechPerfomance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTechPerfomance value) getTechPerfomance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTechPerfomance value)? getTechPerfomance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTechPerfomance value)? getTechPerfomance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of TechPerfomenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TechPerfomenceEventCopyWith<TechPerfomenceEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TechPerfomenceEventCopyWith<$Res> {
  factory $TechPerfomenceEventCopyWith(
          TechPerfomenceEvent value, $Res Function(TechPerfomenceEvent) then) =
      _$TechPerfomenceEventCopyWithImpl<$Res, TechPerfomenceEvent>;
  @useResult
  $Res call({String techid});
}

/// @nodoc
class _$TechPerfomenceEventCopyWithImpl<$Res, $Val extends TechPerfomenceEvent>
    implements $TechPerfomenceEventCopyWith<$Res> {
  _$TechPerfomenceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TechPerfomenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? techid = null,
  }) {
    return _then(_value.copyWith(
      techid: null == techid
          ? _value.techid
          : techid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetTechPerfomanceImplCopyWith<$Res>
    implements $TechPerfomenceEventCopyWith<$Res> {
  factory _$$GetTechPerfomanceImplCopyWith(_$GetTechPerfomanceImpl value,
          $Res Function(_$GetTechPerfomanceImpl) then) =
      __$$GetTechPerfomanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String techid});
}

/// @nodoc
class __$$GetTechPerfomanceImplCopyWithImpl<$Res>
    extends _$TechPerfomenceEventCopyWithImpl<$Res, _$GetTechPerfomanceImpl>
    implements _$$GetTechPerfomanceImplCopyWith<$Res> {
  __$$GetTechPerfomanceImplCopyWithImpl(_$GetTechPerfomanceImpl _value,
      $Res Function(_$GetTechPerfomanceImpl) _then)
      : super(_value, _then);

  /// Create a copy of TechPerfomenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? techid = null,
  }) {
    return _then(_$GetTechPerfomanceImpl(
      techid: null == techid
          ? _value.techid
          : techid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetTechPerfomanceImpl
    with DiagnosticableTreeMixin
    implements GetTechPerfomance {
  const _$GetTechPerfomanceImpl({required this.techid});

  @override
  final String techid;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TechPerfomenceEvent.getTechPerfomance(techid: $techid)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'TechPerfomenceEvent.getTechPerfomance'))
      ..add(DiagnosticsProperty('techid', techid));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTechPerfomanceImpl &&
            (identical(other.techid, techid) || other.techid == techid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, techid);

  /// Create a copy of TechPerfomenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTechPerfomanceImplCopyWith<_$GetTechPerfomanceImpl> get copyWith =>
      __$$GetTechPerfomanceImplCopyWithImpl<_$GetTechPerfomanceImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String techid) getTechPerfomance,
  }) {
    return getTechPerfomance(techid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String techid)? getTechPerfomance,
  }) {
    return getTechPerfomance?.call(techid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String techid)? getTechPerfomance,
    required TResult orElse(),
  }) {
    if (getTechPerfomance != null) {
      return getTechPerfomance(techid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTechPerfomance value) getTechPerfomance,
  }) {
    return getTechPerfomance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTechPerfomance value)? getTechPerfomance,
  }) {
    return getTechPerfomance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTechPerfomance value)? getTechPerfomance,
    required TResult orElse(),
  }) {
    if (getTechPerfomance != null) {
      return getTechPerfomance(this);
    }
    return orElse();
  }
}

abstract class GetTechPerfomance implements TechPerfomenceEvent {
  const factory GetTechPerfomance({required final String techid}) =
      _$GetTechPerfomanceImpl;

  @override
  String get techid;

  /// Create a copy of TechPerfomenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetTechPerfomanceImplCopyWith<_$GetTechPerfomanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TechPerfomenceState {
  TechPerfimenceModel get techPerfimence => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isFailure => throw _privateConstructorUsedError;

  /// Create a copy of TechPerfomenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TechPerfomenceStateCopyWith<TechPerfomenceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TechPerfomenceStateCopyWith<$Res> {
  factory $TechPerfomenceStateCopyWith(
          TechPerfomenceState value, $Res Function(TechPerfomenceState) then) =
      _$TechPerfomenceStateCopyWithImpl<$Res, TechPerfomenceState>;
  @useResult
  $Res call(
      {TechPerfimenceModel techPerfimence, bool isLoading, bool isFailure});
}

/// @nodoc
class _$TechPerfomenceStateCopyWithImpl<$Res, $Val extends TechPerfomenceState>
    implements $TechPerfomenceStateCopyWith<$Res> {
  _$TechPerfomenceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TechPerfomenceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? techPerfimence = null,
    Object? isLoading = null,
    Object? isFailure = null,
  }) {
    return _then(_value.copyWith(
      techPerfimence: null == techPerfimence
          ? _value.techPerfimence
          : techPerfimence // ignore: cast_nullable_to_non_nullable
              as TechPerfimenceModel,
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
abstract class _$$TechPerfomenceStateImplCopyWith<$Res>
    implements $TechPerfomenceStateCopyWith<$Res> {
  factory _$$TechPerfomenceStateImplCopyWith(_$TechPerfomenceStateImpl value,
          $Res Function(_$TechPerfomenceStateImpl) then) =
      __$$TechPerfomenceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TechPerfimenceModel techPerfimence, bool isLoading, bool isFailure});
}

/// @nodoc
class __$$TechPerfomenceStateImplCopyWithImpl<$Res>
    extends _$TechPerfomenceStateCopyWithImpl<$Res, _$TechPerfomenceStateImpl>
    implements _$$TechPerfomenceStateImplCopyWith<$Res> {
  __$$TechPerfomenceStateImplCopyWithImpl(_$TechPerfomenceStateImpl _value,
      $Res Function(_$TechPerfomenceStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TechPerfomenceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? techPerfimence = null,
    Object? isLoading = null,
    Object? isFailure = null,
  }) {
    return _then(_$TechPerfomenceStateImpl(
      techPerfimence: null == techPerfimence
          ? _value.techPerfimence
          : techPerfimence // ignore: cast_nullable_to_non_nullable
              as TechPerfimenceModel,
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

class _$TechPerfomenceStateImpl
    with DiagnosticableTreeMixin
    implements _TechPerfomenceState {
  const _$TechPerfomenceStateImpl(
      {required this.techPerfimence,
      required this.isLoading,
      required this.isFailure});

  @override
  final TechPerfimenceModel techPerfimence;
  @override
  final bool isLoading;
  @override
  final bool isFailure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TechPerfomenceState(techPerfimence: $techPerfimence, isLoading: $isLoading, isFailure: $isFailure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TechPerfomenceState'))
      ..add(DiagnosticsProperty('techPerfimence', techPerfimence))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isFailure', isFailure));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TechPerfomenceStateImpl &&
            (identical(other.techPerfimence, techPerfimence) ||
                other.techPerfimence == techPerfimence) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isFailure, isFailure) ||
                other.isFailure == isFailure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, techPerfimence, isLoading, isFailure);

  /// Create a copy of TechPerfomenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TechPerfomenceStateImplCopyWith<_$TechPerfomenceStateImpl> get copyWith =>
      __$$TechPerfomenceStateImplCopyWithImpl<_$TechPerfomenceStateImpl>(
          this, _$identity);
}

abstract class _TechPerfomenceState implements TechPerfomenceState {
  const factory _TechPerfomenceState(
      {required final TechPerfimenceModel techPerfimence,
      required final bool isLoading,
      required final bool isFailure}) = _$TechPerfomenceStateImpl;

  @override
  TechPerfimenceModel get techPerfimence;
  @override
  bool get isLoading;
  @override
  bool get isFailure;

  /// Create a copy of TechPerfomenceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TechPerfomenceStateImplCopyWith<_$TechPerfomenceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
