import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/core/strings.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/core/requestqrrepo/req_scan_qr_repo.dart';
import 'package:techqrmaintance/domain/deviceregmodel/devices_reg_model_saas/qr_code.dart';
import 'package:techqrmaintance/infrastructure/api_token_generator.dart';

@LazySingleton(as: ReqScanQrRepo)
class ReqQrEndpointServices implements ReqScanQrRepo {
  ApiServices apireqqr = ApiServices();
  @override
  Future<Either<MainFailurs, QrCode>> getQrCodedetail(String id) async {
    try {
      final Response respo = await apireqqr.dio.get(kBaseURL + kQrScan + id);
      log(kBaseURL + kQrScan + id);
      if (respo.statusCode == 200) {
        log(respo.data.toString(), name: "QrCodeservice");
        final QrCode qrCode = QrCode.fromJson(respo.data['data']);
        log(qrCode.orgId.toString(), name: "hello services");
        return Right(qrCode);
      } else {
        log("hello", name: "QrCodeservice");
        apireqqr.clearStoredToken();
        return Left(MainFailurs.serverFailure());
      }
    } catch (e) {
      apireqqr.clearStoredToken();
      log(e.toString(), name: "QrCodeservice");
      return Left(MainFailurs.clientFailure());
    }
  }
}
