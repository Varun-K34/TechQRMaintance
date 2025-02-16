import 'package:dartz/dartz.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';

abstract class GetIdForDeviceRegRepo {
  Future<Either<MainFailurs, int?>> getIdforRegerpo({required String email});
}
