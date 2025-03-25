import 'package:dartz/dartz.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/servicerequestmodel/services_request_saas/services_model.dart';

abstract class ServiceUpdateRepo {
  Future<Either<MainFailurs, String>> updateServiceRequest({
    required String id,
    required ServicesModel servicesModel,
  });
}
