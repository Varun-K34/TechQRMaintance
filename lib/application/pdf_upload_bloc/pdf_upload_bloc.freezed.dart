// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pdf_upload_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PdfUploadEvent {
  DocData get model => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DocData model) pdfUpload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DocData model)? pdfUpload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DocData model)? pdfUpload,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PdfUpload value) pdfUpload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PdfUpload value)? pdfUpload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PdfUpload value)? pdfUpload,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of PdfUploadEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PdfUploadEventCopyWith<PdfUploadEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PdfUploadEventCopyWith<$Res> {
  factory $PdfUploadEventCopyWith(
          PdfUploadEvent value, $Res Function(PdfUploadEvent) then) =
      _$PdfUploadEventCopyWithImpl<$Res, PdfUploadEvent>;
  @useResult
  $Res call({DocData model});
}

/// @nodoc
class _$PdfUploadEventCopyWithImpl<$Res, $Val extends PdfUploadEvent>
    implements $PdfUploadEventCopyWith<$Res> {
  _$PdfUploadEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PdfUploadEvent
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
              as DocData,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PdfUploadImplCopyWith<$Res>
    implements $PdfUploadEventCopyWith<$Res> {
  factory _$$PdfUploadImplCopyWith(
          _$PdfUploadImpl value, $Res Function(_$PdfUploadImpl) then) =
      __$$PdfUploadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DocData model});
}

/// @nodoc
class __$$PdfUploadImplCopyWithImpl<$Res>
    extends _$PdfUploadEventCopyWithImpl<$Res, _$PdfUploadImpl>
    implements _$$PdfUploadImplCopyWith<$Res> {
  __$$PdfUploadImplCopyWithImpl(
      _$PdfUploadImpl _value, $Res Function(_$PdfUploadImpl) _then)
      : super(_value, _then);

  /// Create a copy of PdfUploadEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$PdfUploadImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as DocData,
    ));
  }
}

/// @nodoc

class _$PdfUploadImpl with DiagnosticableTreeMixin implements PdfUpload {
  const _$PdfUploadImpl({required this.model});

  @override
  final DocData model;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PdfUploadEvent.pdfUpload(model: $model)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PdfUploadEvent.pdfUpload'))
      ..add(DiagnosticsProperty('model', model));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PdfUploadImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  /// Create a copy of PdfUploadEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PdfUploadImplCopyWith<_$PdfUploadImpl> get copyWith =>
      __$$PdfUploadImplCopyWithImpl<_$PdfUploadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DocData model) pdfUpload,
  }) {
    return pdfUpload(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DocData model)? pdfUpload,
  }) {
    return pdfUpload?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DocData model)? pdfUpload,
    required TResult orElse(),
  }) {
    if (pdfUpload != null) {
      return pdfUpload(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PdfUpload value) pdfUpload,
  }) {
    return pdfUpload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PdfUpload value)? pdfUpload,
  }) {
    return pdfUpload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PdfUpload value)? pdfUpload,
    required TResult orElse(),
  }) {
    if (pdfUpload != null) {
      return pdfUpload(this);
    }
    return orElse();
  }
}

abstract class PdfUpload implements PdfUploadEvent {
  const factory PdfUpload({required final DocData model}) = _$PdfUploadImpl;

  @override
  DocData get model;

  /// Create a copy of PdfUploadEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PdfUploadImplCopyWith<_$PdfUploadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PdfUploadState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isFailure => throw _privateConstructorUsedError;
  DocData get data => throw _privateConstructorUsedError;
  double get uploadProgress => throw _privateConstructorUsedError;

  /// Create a copy of PdfUploadState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PdfUploadStateCopyWith<PdfUploadState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PdfUploadStateCopyWith<$Res> {
  factory $PdfUploadStateCopyWith(
          PdfUploadState value, $Res Function(PdfUploadState) then) =
      _$PdfUploadStateCopyWithImpl<$Res, PdfUploadState>;
  @useResult
  $Res call(
      {bool isLoading, bool isFailure, DocData data, double uploadProgress});
}

/// @nodoc
class _$PdfUploadStateCopyWithImpl<$Res, $Val extends PdfUploadState>
    implements $PdfUploadStateCopyWith<$Res> {
  _$PdfUploadStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PdfUploadState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isFailure = null,
    Object? data = null,
    Object? uploadProgress = null,
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
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DocData,
      uploadProgress: null == uploadProgress
          ? _value.uploadProgress
          : uploadProgress // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PdfUploadStateImplCopyWith<$Res>
    implements $PdfUploadStateCopyWith<$Res> {
  factory _$$PdfUploadStateImplCopyWith(_$PdfUploadStateImpl value,
          $Res Function(_$PdfUploadStateImpl) then) =
      __$$PdfUploadStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, bool isFailure, DocData data, double uploadProgress});
}

/// @nodoc
class __$$PdfUploadStateImplCopyWithImpl<$Res>
    extends _$PdfUploadStateCopyWithImpl<$Res, _$PdfUploadStateImpl>
    implements _$$PdfUploadStateImplCopyWith<$Res> {
  __$$PdfUploadStateImplCopyWithImpl(
      _$PdfUploadStateImpl _value, $Res Function(_$PdfUploadStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PdfUploadState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isFailure = null,
    Object? data = null,
    Object? uploadProgress = null,
  }) {
    return _then(_$PdfUploadStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailure: null == isFailure
          ? _value.isFailure
          : isFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DocData,
      uploadProgress: null == uploadProgress
          ? _value.uploadProgress
          : uploadProgress // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$PdfUploadStateImpl
    with DiagnosticableTreeMixin
    implements _PdfUploadState {
  const _$PdfUploadStateImpl(
      {required this.isLoading,
      required this.isFailure,
      required this.data,
      this.uploadProgress = 0.0});

  @override
  final bool isLoading;
  @override
  final bool isFailure;
  @override
  final DocData data;
  @override
  @JsonKey()
  final double uploadProgress;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PdfUploadState(isLoading: $isLoading, isFailure: $isFailure, data: $data, uploadProgress: $uploadProgress)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PdfUploadState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isFailure', isFailure))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('uploadProgress', uploadProgress));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PdfUploadStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isFailure, isFailure) ||
                other.isFailure == isFailure) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.uploadProgress, uploadProgress) ||
                other.uploadProgress == uploadProgress));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, isFailure, data, uploadProgress);

  /// Create a copy of PdfUploadState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PdfUploadStateImplCopyWith<_$PdfUploadStateImpl> get copyWith =>
      __$$PdfUploadStateImplCopyWithImpl<_$PdfUploadStateImpl>(
          this, _$identity);
}

abstract class _PdfUploadState implements PdfUploadState {
  const factory _PdfUploadState(
      {required final bool isLoading,
      required final bool isFailure,
      required final DocData data,
      final double uploadProgress}) = _$PdfUploadStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isFailure;
  @override
  DocData get data;
  @override
  double get uploadProgress;

  /// Create a copy of PdfUploadState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PdfUploadStateImplCopyWith<_$PdfUploadStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
