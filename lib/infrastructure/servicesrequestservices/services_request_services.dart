import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/core/strings.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/servicerequestmodel/servicerequest_repo.dart';
import 'package:techqrmaintance/domain/servicerequestmodel/services_request_saas/services_model.dart';
import 'package:techqrmaintance/domain/servicerequestmodel/services_request_saas/services_request_saas.dart';
import 'package:techqrmaintance/infrastructure/api_token_generator.dart';

@LazySingleton(as: ServicesRequestRepo)
class ServicesRequestServices implements ServicesRequestRepo {
  ApiServices servicesreqapi = ApiServices();

  @override
  Future<Either<MainFailurs, List<ServicesModel>>> getServiceRequest() async {
    try {
      final Response servicerespo =
          await servicesreqapi.dio.get(kBaseURL + kServices);
      //log(servicerespo.toString());
      if (servicerespo.statusCode == 200) {
        final servicesData = ServicesRequestSaas.fromJson(servicerespo.data);

        if (servicesData.data != null) {
        //log(servicesData.data.toString(),name: "hello 3");
          return right(servicesData.data!);
        } else {
          return left(const MainFailurs.serverFailure());
        }
      } else {
        log(servicerespo.statusMessage.toString(),name: "hello 2");
        servicesreqapi.clearStoredToken();
        return left(const MainFailurs.serverFailure());
      }
    } catch (e) {
      log(e.runtimeType.toString() + ": " + e.toString(), name: "hello 1");
      servicesreqapi.clearStoredToken();
      return left(const MainFailurs.clientFailure());
    }
  }
}
