import 'package:dartz/dartz.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';

abstract class GetLocationRepo {
  Future<Either<MainFailurs, List<String>>> getLocation();
}
