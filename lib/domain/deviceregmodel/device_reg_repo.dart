import 'package:dartz/dartz.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/deviceregmodel/device_reg_model/device_reg_model.dart';
import 'package:techqrmaintance/domain/deviceregmodel/devices_reg_model_saas/device_model_saas.dart';

abstract class DeviceRegRepo {
  Future<Either<MainFailurs, String>> createDevice(
      {required DeviceModelSaas deviceModel});
}
