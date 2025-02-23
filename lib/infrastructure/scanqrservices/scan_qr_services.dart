import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/core/strings.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/scanqrmodel/scan_qr_model/scan_qr_model.dart';
import 'package:techqrmaintance/domain/scanqrmodel/scan_qr_repo.dart';
import 'package:techqrmaintance/infrastructure/api_token_generator.dart';

@LazySingleton(as: ScanQRRepo)
class ScanQrServices implements ScanQRRepo {
  ApiServices scanapi = ApiServices();
  @override
  Future<Either<MainFailurs, ScanQrModel>> getScanQrData(
      {required String id}) async {
    try {
      final Response qrRespo = await scanapi.dio.get(kBaseURL + kScanQr + id);
      if (qrRespo.statusCode == 200) {
        final ScanQrModel scanRespo = ScanQrModel.fromJson(qrRespo.data);
        return Right(scanRespo);
      } else {
        return Left(MainFailurs.clientFailure());
      }
    } on DioException catch (e) {
      scanapi.clearStoredToken();
      if (e.response?.statusCode == 302) {
        log('Redirect detected to: ${e.response?.headers.value('location')}');
      }
      return Left(MainFailurs.serverFailure());
    } catch (e) {
      return Left(MainFailurs.serverFailure());
    }
  }
}
