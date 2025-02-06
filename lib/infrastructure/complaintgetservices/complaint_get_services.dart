import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/core/strings.dart';
import 'package:techqrmaintance/domain/complaintmodel/complaint_repo.dart';
import 'package:techqrmaintance/domain/complaintmodel/complanits_list/complanits_list.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/infrastructure/api_token_generator.dart';

@LazySingleton(as: ComplaintRepo)
class ComplaintGetServices implements ComplaintRepo {
  ApiServices complaintApi = ApiServices();
  @override
  Future<Either<MainFailurs, ComplanitsList>> getComplaintsList() async {
    try {
      final complaintRespo =
          await complaintApi.dio.get(kBaseURL + kCompliantsGet);
      log(complaintRespo.data.toString());
      if (complaintRespo.statusCode == 200) {
        final complaintSuccessList =
            ComplanitsList.fromJson(complaintRespo.data);
        return Right(complaintSuccessList);
      } else {
        complaintApi.clearStoredToken();
        return Left(MainFailurs.serverFailure());
      }
    } on DioException catch (e) {
      complaintApi.clearStoredToken();
      if (e.response?.statusCode == 302) {
        log('Redirect detected to: ${e.response?.headers.value('location')}');
      }
      return Left(MainFailurs.clientFailure());
    }
  }
}
