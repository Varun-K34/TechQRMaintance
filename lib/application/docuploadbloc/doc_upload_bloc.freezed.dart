// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doc_upload_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DocUploadEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uploadDoc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? uploadDoc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uploadDoc,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadDoc value) uploadDoc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadDoc value)? uploadDoc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadDoc value)? uploadDoc,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocUploadEventCopyWith<$Res> {
  factory $DocUploadEventCopyWith(
          DocUploadEvent value, $Res Function(DocUploadEvent) then) =
      _$DocUploadEventCopyWithImpl<$Res, DocUploadEvent>;
}

/// @nodoc
class _$DocUploadEventCopyWithImpl<$Res, $Val extends DocUploadEvent>
    implements $DocUploadEventCopyWith<$Res> {
  _$DocUploadEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DocUploadEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UploadDocImplCopyWith<$Res> {
  factory _$$UploadDocImplCopyWith(
          _$UploadDocImpl value, $Res Function(_$UploadDocImpl) then) =
      __$$UploadDocImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UploadDocImplCopyWithImpl<$Res>
    extends _$DocUploadEventCopyWithImpl<$Res, _$UploadDocImpl>
    implements _$$UploadDocImplCopyWith<$Res> {
  __$$UploadDocImplCopyWithImpl(
      _$UploadDocImpl _value, $Res Function(_$UploadDocImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocUploadEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UploadDocImpl implements UploadDoc {
  const _$UploadDocImpl();

  @override
  String toString() {
    return 'DocUploadEvent.uploadDoc()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UploadDocImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uploadDoc,
  }) {
    return uploadDoc();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? uploadDoc,
  }) {
    return uploadDoc?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uploadDoc,
    required TResult orElse(),
  }) {
    if (uploadDoc != null) {
      return uploadDoc();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadDoc value) uploadDoc,
  }) {
    return uploadDoc(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadDoc value)? uploadDoc,
  }) {
    return uploadDoc?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadDoc value)? uploadDoc,
    required TResult orElse(),
  }) {
    if (uploadDoc != null) {
      return uploadDoc(this);
    }
    return orElse();
  }
}

abstract class UploadDoc implements DocUploadEvent {
  const factory UploadDoc() = _$UploadDocImpl;
}

/// @nodoc
mixin _$DocUploadState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isFailure => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  File? get pdfFile => throw _privateConstructorUsedError;
  String? get lastSavedPath => throw _privateConstructorUsedError;

  /// Create a copy of DocUploadState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DocUploadStateCopyWith<DocUploadState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocUploadStateCopyWith<$Res> {
  factory $DocUploadStateCopyWith(
          DocUploadState value, $Res Function(DocUploadState) then) =
      _$DocUploadStateCopyWithImpl<$Res, DocUploadState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isFailure,
      String? errorMessage,
      File? pdfFile,
      String? lastSavedPath});
}

/// @nodoc
class _$DocUploadStateCopyWithImpl<$Res, $Val extends DocUploadState>
    implements $DocUploadStateCopyWith<$Res> {
  _$DocUploadStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DocUploadState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isFailure = null,
    Object? errorMessage = freezed,
    Object? pdfFile = freezed,
    Object? lastSavedPath = freezed,
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
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      pdfFile: freezed == pdfFile
          ? _value.pdfFile
          : pdfFile // ignore: cast_nullable_to_non_nullable
              as File?,
      lastSavedPath: freezed == lastSavedPath
          ? _value.lastSavedPath
          : lastSavedPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DocUploadStateImplCopyWith<$Res>
    implements $DocUploadStateCopyWith<$Res> {
  factory _$$DocUploadStateImplCopyWith(_$DocUploadStateImpl value,
          $Res Function(_$DocUploadStateImpl) then) =
      __$$DocUploadStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isFailure,
      String? errorMessage,
      File? pdfFile,
      String? lastSavedPath});
}

/// @nodoc
class __$$DocUploadStateImplCopyWithImpl<$Res>
    extends _$DocUploadStateCopyWithImpl<$Res, _$DocUploadStateImpl>
    implements _$$DocUploadStateImplCopyWith<$Res> {
  __$$DocUploadStateImplCopyWithImpl(
      _$DocUploadStateImpl _value, $Res Function(_$DocUploadStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocUploadState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isFailure = null,
    Object? errorMessage = freezed,
    Object? pdfFile = freezed,
    Object? lastSavedPath = freezed,
  }) {
    return _then(_$DocUploadStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailure: null == isFailure
          ? _value.isFailure
          : isFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      pdfFile: freezed == pdfFile
          ? _value.pdfFile
          : pdfFile // ignore: cast_nullable_to_non_nullable
              as File?,
      lastSavedPath: freezed == lastSavedPath
          ? _value.lastSavedPath
          : lastSavedPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DocUploadStateImpl implements _DocUploadState {
  const _$DocUploadStateImpl(
      {required this.isLoading,
      required this.isFailure,
      this.errorMessage,
      this.pdfFile,
      this.lastSavedPath});

  @override
  final bool isLoading;
  @override
  final bool isFailure;
  @override
  final String? errorMessage;
  @override
  final File? pdfFile;
  @override
  final String? lastSavedPath;

  @override
  String toString() {
    return 'DocUploadState(isLoading: $isLoading, isFailure: $isFailure, errorMessage: $errorMessage, pdfFile: $pdfFile, lastSavedPath: $lastSavedPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocUploadStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isFailure, isFailure) ||
                other.isFailure == isFailure) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.pdfFile, pdfFile) || other.pdfFile == pdfFile) &&
            (identical(other.lastSavedPath, lastSavedPath) ||
                other.lastSavedPath == lastSavedPath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, isFailure, errorMessage, pdfFile, lastSavedPath);

  /// Create a copy of DocUploadState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DocUploadStateImplCopyWith<_$DocUploadStateImpl> get copyWith =>
      __$$DocUploadStateImplCopyWithImpl<_$DocUploadStateImpl>(
          this, _$identity);
}

abstract class _DocUploadState implements DocUploadState {
  const factory _DocUploadState(
      {required final bool isLoading,
      required final bool isFailure,
      final String? errorMessage,
      final File? pdfFile,
      final String? lastSavedPath}) = _$DocUploadStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isFailure;
  @override
  String? get errorMessage;
  @override
  File? get pdfFile;
  @override
  String? get lastSavedPath;

  /// Create a copy of DocUploadState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DocUploadStateImplCopyWith<_$DocUploadStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
