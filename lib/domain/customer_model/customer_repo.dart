import 'package:dartz/dartz.dart';
import 'package:techqrmaintance/domain/customer_model/customer_model.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';


abstract class CustomerRepo {
  Future<Either<MainFailurs, CustomerModel>> createCustomer(
      {required CustomerModel customerModel});
}
