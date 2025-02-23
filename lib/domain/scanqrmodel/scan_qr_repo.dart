import 'package:dartz/dartz.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/scanqrmodel/scan_qr_model/scan_qr_model.dart';

abstract class ScanQRRepo {
  Future<Either<MainFailurs, ScanQrModel>> getScanQrData({required String id});
}
