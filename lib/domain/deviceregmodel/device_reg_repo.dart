import 'package:dartz/dartz.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/deviceregmodel/device_reg_model/device_reg_model.dart';

abstract class DeviceRegRepo {
  Future<Either<MainFailurs, String>> createDevice(
      {required DeviceRegModel deviceModel});
}
