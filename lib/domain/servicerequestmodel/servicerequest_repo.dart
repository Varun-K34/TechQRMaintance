import 'package:dartz/dartz.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/servicerequestmodel/services_request_saas/services_model.dart';

abstract class ServicesRequestRepo {
  Future<Either<MainFailurs,List<ServicesModel>>> getServiceRequest();
}