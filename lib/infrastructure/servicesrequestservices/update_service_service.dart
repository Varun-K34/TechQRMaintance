import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/core/strings.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/servicerequestmodel/service_update_repo.dart';
import 'package:techqrmaintance/domain/servicerequestmodel/services_request_saas/services_model.dart';
import 'package:techqrmaintance/infrastructure/api_token_generator.dart';

@LazySingleton(as: ServiceUpdateRepo)
class UpdateServiceService implements ServiceUpdateRepo {
  ApiServices updatapi = ApiServices();

  @override
  Future<Either<MainFailurs, String>> updateServiceRequest({
    required String id,
    required ServicesModel servicesModel,
    Function(int, int)? onProgress,
  }) async {
    try {
      // Convert to JSON and remove nulls
      Map<String, dynamic> updateserviceJson = servicesModel.toJson();
      updateserviceJson.removeWhere((key, value) => value == null);

      log(updateserviceJson.toString());

      FormData formData;

      if (servicesModel.completionPhotoFile != null) {
        final MultipartFile imageFile = await MultipartFile.fromFile(
          servicesModel.completionPhotoFile!.path,
          filename: servicesModel.completionPhotoFile!.path.split('/').last,
        );

        // Handle lists for FormData (fix for new_parts_used type fields)
        final Map<String, dynamic> processedMap = {};
        updateserviceJson.forEach((key, value) {
          if (value is List) {
            for (var i = 0; i < value.length; i++) {
              processedMap['$key[$i]'] = value[i];
            }
          } else {
            processedMap[key] = value;
          }
        });

        processedMap["completion_photo"] = imageFile;
        formData = FormData.fromMap(processedMap);
      } else {
        // Handle lists for FormData (fix for new_parts_used type fields)
        final Map<String, dynamic> processedMap = {};
        updateserviceJson.forEach((key, value) {
          if (value is List) {
            for (var i = 0; i < value.length; i++) {
              processedMap['$key[$i]'] = value[i];
            }
          } else {
            processedMap[key] = value;
          }
        });

        formData = FormData.fromMap(processedMap);
      }

      final Response response = await updatapi.dio.post(
        '$kBaseURL$kServices$id?_method=PUT', // Using method override for PUT
        data: formData,
        onSendProgress: onProgress,
        options: Options(
          headers: {
            "Content-Type": "multipart/form-data",
          },
        ),
      );

      if (response.statusCode == 200) {
        return right("Service Updated");
      } else {
        return left(const MainFailurs.serverFailure());
      }
    } catch (e) {
      log('Update Error: $e');
      return left(const MainFailurs.clientFailure());
    }
  }
}
