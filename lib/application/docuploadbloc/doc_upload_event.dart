part of 'doc_upload_bloc.dart';

@freezed
class DocUploadEvent with _$DocUploadEvent {
  const factory DocUploadEvent.uploadDoc() = UploadDoc;
}
