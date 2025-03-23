import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/core/strings.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/servicerequestmodel/services_req_call_by_id.dart';
import 'package:techqrmaintance/domain/servicerequestmodel/services_request_saas/services_model.dart';
import 'package:techqrmaintance/infrastructure/api_token_generator.dart';

@LazySingleton(as: ServicesReqCallByIdRepo)
class ServiceReqByIdServices implements ServicesReqCallByIdRepo {
  ApiServices servicesbyidapi = ApiServices();
  @override
  Future<Either<MainFailurs, ServicesModel>> getServicesReqCallById(
      {required String id}) async {
    try {
      //log(kBaseURL + kServices + id);
      final Response singleservicerespo =
          await servicesbyidapi.dio.get(kBaseURL + kServices + id);
      //log(singleservicerespo.data.toString());
      if (singleservicerespo.statusCode == 200) {
        final ServicesModel servicesModel =
            ServicesModel.fromJson(singleservicerespo.data['data']);
        log(servicesModel.toString());
        return Right(servicesModel);
      } else {
        return Left(MainFailurs.serverFailure());
      }
    } catch (e) {
      servicesbyidapi.clearStoredToken();
      return Left(MainFailurs.serverFailure());
    }
  }
}
