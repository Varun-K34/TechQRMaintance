import 'package:dartz/dartz.dart';
import 'package:techqrmaintance/domain/complaintmodel/complanits_list/customer.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';

abstract class UserLogRepo {
  Future<Either<MainFailurs, Customer>> getUserLogList(String email);
}
