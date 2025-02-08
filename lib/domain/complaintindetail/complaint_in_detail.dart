import 'package:dartz/dartz.dart';
import 'package:techqrmaintance/domain/complaintmodel/complanits_list/datum.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';

abstract class DetailComplaintRepo {
  Future<Either<MainFailurs, Datum>> getComplaintInDetail({required String id});
}
