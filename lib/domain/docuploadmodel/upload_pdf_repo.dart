import 'package:dartz/dartz.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/docuploadmodel/doc_upload_model/docdata.dart';

abstract class UploadPdfRepo {
  Future<Either<MainFailurs,DocData>> uploadPdf({required DocData modeldata, Function(int, int)? onProgress});
}