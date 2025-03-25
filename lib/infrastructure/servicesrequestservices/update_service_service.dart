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
  Future<Either<MainFailurs, String>> updateServiceRequest(
      {required String id, required ServicesModel servicesModel}) async {
    try {
      Map<String, dynamic> updateserviceJson = servicesModel.toJson();
      updateserviceJson.removeWhere((key, value) => value == null);

      log(updateserviceJson.toString(), name: "updateservices");
      final Response updateservice = await updatapi.dio.put(
        kBaseURL + kServices + id,
        data: updateserviceJson,
      );
      if (updateservice.statusCode == 200) {
        return right("Service Updated");
      } else {
        return left(const MainFailurs.serverFailure());
      }
    } catch (e) {
      return left(const MainFailurs.serverFailure());
    }
  }
}
