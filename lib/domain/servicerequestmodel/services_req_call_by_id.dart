import 'package:dartz/dartz.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/servicerequestmodel/services_request_saas/services_model.dart';

abstract class ServicesReqCallByIdRepo {
  Future<Either<MainFailurs, ServicesModel>> getServicesReqCallById(
      {required String id});
}
