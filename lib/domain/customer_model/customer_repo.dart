import 'package:dartz/dartz.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/customer_model/customer_model_list_saas/customer_model_saas.dart';

abstract class CustomerRepo {
  Future<Either<MainFailurs, int?>> createCustomer(
      {required CustomerModelSaas customerModel});
}
