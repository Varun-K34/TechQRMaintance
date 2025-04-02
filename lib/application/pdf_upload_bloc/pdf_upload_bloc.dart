import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/domain/docuploadmodel/doc_upload_model/docdata.dart';
import 'package:techqrmaintance/domain/docuploadmodel/upload_pdf_repo.dart';

part 'pdf_upload_event.dart';
part 'pdf_upload_state.dart';
part 'pdf_upload_bloc.freezed.dart';

@injectable
class PdfUploadBloc extends Bloc<PdfUploadEvent, PdfUploadState> {
  final UploadPdfRepo uploadPdfRepo;
  PdfUploadBloc(this.uploadPdfRepo) : super(PdfUploadState.initial()) {
    on<PdfUpload>(
      (event, emit) async {
        //emit(state.copyWith(isLoading: true));
        await uploadPdfRepo.uploadPdf(modeldata: event.model,
              onProgress: (sent, total) {
                double progress = sent / total;
                emit(state.copyWith(
                    uploadProgress: progress)); // Update UI with progress
              },
            ).then(
              (docupload) => docupload.fold(
                (l) => emit(state.copyWith(
                  isFailure: true,
                  isLoading: false,
                  uploadProgress: 0.0,
                )),
                (r) => emit(
                  state.copyWith(
                    data: r,
                    isFailure: false,
                    isLoading: false,
                    uploadProgress: 1.0,
                  ),
                ),
              ),
            );
      },
    );
  }
}
