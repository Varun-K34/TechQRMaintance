part of 'pdf_upload_bloc.dart';

@freezed
class PdfUploadState with _$PdfUploadState {
  const factory PdfUploadState({
    required bool isLoading,
    required bool isFailure,
    required DocData data,
  }) = _PdfUploadState;

  factory PdfUploadState.initial() {
    return PdfUploadState(
      isLoading: false,
      isFailure: false,
      data: DocData(),
    );
  }
}
