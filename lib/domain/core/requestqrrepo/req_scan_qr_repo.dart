import 'package:dartz/dartz.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/deviceregmodel/devices_reg_model_saas/qr_code.dart';

abstract class ReqScanQrRepo {
  Future<Either<MainFailurs, QrCode>> getQrCodedetail(String id);
}
