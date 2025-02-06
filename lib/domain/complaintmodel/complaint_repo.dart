import 'package:dartz/dartz.dart';
import 'package:techqrmaintance/domain/complaintmodel/complanits_list/complanits_list.dart';
import 'package:techqrmaintance/domain/complaintmodel/complanits_list/datum.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';

abstract class ComplaintRepo {
  Future<Either<MainFailurs, ComplanitsList>> getComplaintsList();
}
