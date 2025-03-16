import 'package:dartz/dartz.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/modelandbrandmodel/device_models_model/device_models_model.dart';

abstract class DeviceModelRepo {
  Future<Either<MainFailurs, List<DeviceModelsModel>>> getDeviceModel();
}
