import 'package:dartz/dartz.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/historymodel/history_maintenance/hisdata.dart';

abstract class MaintanceHistoryRepo {
  Future<Either<MainFailurs, List<HisData>>> getMaintanceHistory();
}
