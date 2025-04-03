part of 'pdf_upload_bloc.dart';

@freezed
class PdfUploadEvent with _$PdfUploadEvent {
  const factory PdfUploadEvent.pdfUpload({required DocData model}) = PdfUpload;
}
