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

      final Response device =
          await deviceApi.dio.post(kBaseURL + kDevice, data: sanitizedJson);

      if (device.statusCode == 201) {
        log("helloooooo");
        final int? id = device.data["data"]["id"];
        //log("Extracted ID: $id");
        return Right(id.toString());
      } else {
        log("error");
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
