part of 'doc_upload_bloc.dart';

@freezed
class DocUploadState with _$DocUploadState {
  const factory DocUploadState({
    required bool isLoading,
    required bool isFailure,
    String? errorMessage,
    File? pdfFile,
    String? lastSavedPath,
  }) = _DocUploadState;

  factory DocUploadState.initial() {
    return DocUploadState(
      isLoading: false,
      isFailure: false,
    );
  }
}
