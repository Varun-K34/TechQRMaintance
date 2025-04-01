import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/core/strings.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/deviceregmodel/device_reg_repo.dart';
import 'package:techqrmaintance/domain/deviceregmodel/devices_reg_model_saas/device_model_saas.dart';
import 'package:techqrmaintance/infrastructure/api_token_generator.dart';

@LazySingleton(as: DeviceRegRepo)
class DeviceRegService implements DeviceRegRepo {
  ApiServices deviceApi = ApiServices();
  @override
  Future<Either<MainFailurs, String>> createDevice(
      {required DeviceModelSaas deviceModel}) async {
    log(deviceModel.toJson().toString());
    try {
      Map<String, dynamic> sanitizedJson = deviceModel.toJson();
      sanitizedJson
          .removeWhere((key, value) => value == null && key != 'technician_id');

      log(sanitizedJson.toString(), name: "regservices");

      final formData = FormData.fromMap({
        // Convert all values to strings
        for (var entry in sanitizedJson.entries)
          entry.key: entry.value?.toString(),
      });
      // Add PDF file with correct field name
      if (deviceModel.documentFile != null) {
        log("hello doc");
        formData.files.add(MapEntry(
          'documents', // Match API expected field name
          await MultipartFile.fromFile(
            deviceModel.documentFile!.path,
            filename:
                'device_document_${DateTime.now().millisecondsSinceEpoch}.pdf',
          ),
        ));
      }

      log('FormData fields: ${formData.fields}');

      final Response device =
          await deviceApi.dio.post(kBaseURL + kDevice, data: formData,
        options: Options(
          contentType: 'multipart/form-data',
          headers: {'Accept': 'application/json'},
        ),
      );

      if (device.statusCode == 201) {
        return Right("Device Registration Completed");
      } else {
        await deviceApi.clearStoredToken();
        return Left(MainFailurs.clientFailure());
      }
    } on DioException catch (e) {
      log('DioException: ${e.message}', error: e);
      await deviceApi.clearStoredToken();
      if (e.response?.statusCode == 302) {
        log('Redirect detected to: ${e.response?.headers.value('location')}');
      }
      return Left(MainFailurs.serverFailure());
    } catch (e) {
      log('Unexpected error: ${e.toString()}',
          error: e, stackTrace: StackTrace.current);
      return Left(MainFailurs.clientFailure());
    }
  }
}
