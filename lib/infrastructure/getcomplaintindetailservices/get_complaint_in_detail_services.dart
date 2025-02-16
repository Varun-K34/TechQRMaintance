import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/core/strings.dart';
import 'package:techqrmaintance/domain/complaintindetail/complaint_in_detail.dart';
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
      final detailincomplaint =
          await detailApi.dio.get('$kBaseURL$kCompliantsGet$id');

      if (detailincomplaint.statusCode == 200) {
        final jsonResponse = detailincomplaint.data;

        // Ensure nested data is mapped correctly
        if (jsonResponse != null && jsonResponse['data'] != null) {
          final complaintSuccess = Datum.fromJson(jsonResponse['data']);
          log(complaintSuccess.toJson().toString());
          return Right(complaintSuccess);
        } else {
          log("Empty data in response");
          return Left(MainFailurs.serverFailure());
        }
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
