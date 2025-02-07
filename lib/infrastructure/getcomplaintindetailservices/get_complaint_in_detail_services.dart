import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/core/strings.dart';
import 'package:techqrmaintance/domain/complaintindetail/complaint_in_detail.dart';
import 'package:techqrmaintance/domain/complaintindetail/detail_complaint_model/detail_complaint_model.dart';
import 'package:techqrmaintance/domain/complaintmodel/complanits_list/datum.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/infrastructure/api_token_generator.dart';

@LazySingleton(as: DetailComplaintRepo)
class GetComplaintInDetailServices implements DetailComplaintRepo {
  ApiServices detailApi = ApiServices();
  @override
  Future<Either<MainFailurs, Datum>> getComplaintInDetail(
      {required String id}) async {
    try {
      log(kBaseURL + kCompliantsGet + id);
      final detailincomplaint =
          await detailApi.dio.get(kBaseURL + kCompliantsGet + id);
      //log(detailincomplaint.data.toString());
      if (detailincomplaint.statusCode == 200) {
        final complaintSuccess = DetailComplaintModel.fromJson(detailincomplaint.data);
        log(complaintSuccess.data!.toJson().toString());
        return Right(complaintSuccess.data!);
      } else {
        return Left(MainFailurs.clientFailure());
      }
    } on DioException catch (e) {
      detailApi.clearStoredToken();
      if (e.response?.statusCode == 302) {
        log('Redirect detected to: ${e.response?.headers.value('location')}');
      }
      return Left(MainFailurs.clientFailure());
    }
  }
}
