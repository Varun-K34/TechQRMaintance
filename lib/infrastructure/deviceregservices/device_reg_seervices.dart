import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/core/strings.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/deviceregmodel/device_reg_model/device_reg_model.dart';
import 'package:techqrmaintance/domain/deviceregmodel/device_reg_repo.dart';
import 'package:techqrmaintance/infrastructure/api_token_generator.dart';

@LazySingleton(as: DeviceRegRepo)
class DeviceRegService implements DeviceRegRepo {
  ApiServices deviceApi = ApiServices();
  @override
  Future<Either<MainFailurs, String>> createDevice(
      {required DeviceRegModel deviceModel}) async {
    try {
      final Response device = await deviceApi.dio
          .post(kBaseURL + kDevice, data: deviceModel.toJson());
      if (device.statusCode == 200 && device.statusCode == 201) {
        return Right("Device Registration Completed");
      } else {
        await deviceApi.clearStoredToken();
        return Left(MainFailurs.clientFailure());
      }
    } on DioException catch (e) {
      await deviceApi.clearStoredToken();
      if (e.response?.statusCode == 302) {
        log('Redirect detected to: ${e.response?.headers.value('location')}');
      }
      return Left(MainFailurs.serverFailure());
    }
  }
}
