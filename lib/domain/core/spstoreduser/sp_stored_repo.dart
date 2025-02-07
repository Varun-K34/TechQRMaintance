import 'package:dartz/dartz.dart';
import 'package:techqrmaintance/domain/complaintmodel/complanits_list/customer.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';

abstract class SpStoredUser {
  Future<Either<MainFailurs, Customer>> getSpUser();
}
