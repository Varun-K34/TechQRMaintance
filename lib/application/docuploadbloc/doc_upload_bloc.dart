import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/domain/core/docuploadrepo/docapload_repo.dart';

part 'doc_upload_event.dart';
part 'doc_upload_state.dart';
part 'doc_upload_bloc.freezed.dart';

@injectable
class DocUploadBloc extends Bloc<DocUploadEvent, DocUploadState> {
  final DocaploadRepo docaploadRepo;
  DocUploadBloc(this.docaploadRepo) : super(DocUploadState.initial()) {
    on<UploadDoc>((event, emit) async {
      emit(state.copyWith(isLoading: true, errorMessage: null));
      await docaploadRepo.uploadFile().then(
            (uploadedfile) => uploadedfile.fold(
              (failure) => emit(
                state.copyWith(
                  isFailure: true,
                  isLoading: false,
                  errorMessage: null,
                ),
              ),
              (pdfFile) => emit(
                state.copyWith(
                  pdfFile: pdfFile,
                  isLoading: false,
                  isFailure: false,
                  lastSavedPath: pdfFile.path,
                ),
              ),
            ),
          );
    });
  }
}
