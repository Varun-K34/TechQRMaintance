import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/core/strings.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/docuploadmodel/doc_upload_model/docdata.dart';
import 'package:techqrmaintance/domain/docuploadmodel/upload_pdf_repo.dart';
import 'package:techqrmaintance/infrastructure/api_token_generator.dart';

@LazySingleton(as: UploadPdfRepo)
class PdfServices implements UploadPdfRepo {
  ApiServices pdfapi = ApiServices();

  @override
  Future<Either<MainFailurs, DocData>> uploadPdf(
      {required DocData modeldata,
       Function(int, int)? onProgress}) async {
    try {
      Map<String, dynamic> sanitizedJson = modeldata.toJson();
      sanitizedJson.removeWhere((key, value) => value == null);
      
      // Check if file is null before proceeding
      if (modeldata.file == null) {
        return Left(MainFailurs.clientFailure());
      }

      // Prepare multipart file
      MultipartFile file = await MultipartFile.fromFile(
        modeldata.file!.path,
        
      );

      // Prepare form data
      FormData formData = FormData.fromMap({
        "org_id": modeldata.orgId,
        "device_id": modeldata.deviceId,
        "name": modeldata.name,
        "file": file,
      });

      
      Response response = await pdfapi.dio.post(
        kBaseURL + kDoc,
        data: formData,
        onSendProgress: onProgress,
        options: Options(headers: {
          "Content-Type": "multipart/form-data",
        }),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(DocData.fromJson(response.data));
      } else {
        return Left(MainFailurs.serverFailure());
      }
    } catch (e) {
      return Left(MainFailurs.clientFailure());
    }
  }
}
