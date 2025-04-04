part of 'pdf_upload_bloc.dart';

@freezed
class PdfUploadState with _$PdfUploadState {
  const factory PdfUploadState({
    required bool isLoading,
    required bool isFailure,
    required DocData data,
    @Default(0.0) double uploadProgress, // Add this
  }) = _PdfUploadState;

  factory PdfUploadState.initial() {
    return PdfUploadState(
      isLoading: false,
      isFailure: false,
      data: DocData(),
    );
  }
}
