import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/core/strings.dart';
import 'package:techqrmaintance/domain/catagorymodel/catagory_get_repo.dart';
import 'package:techqrmaintance/domain/catagorymodel/catagory_model/catagory_model.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/infrastructure/api_token_generator.dart';

@LazySingleton(as: CatagoryGetRepo)
class CatagoryServices implements CatagoryGetRepo {
  ApiServices catapi = ApiServices();
  @override
  Future<Either<MainFailurs, CatagoryModel>> getCatagoryList() async {
    try {
      final Response catrespo = await catapi.dio.get(kBaseURL + kCatagory);
      if (catrespo.statusCode == 200) {
        final CatagoryModel catData = CatagoryModel.fromJson(catrespo.data);
        log(catData.toJson().toString());
        return Right(catData);
      } else {
        return Left(MainFailurs.serverFailure());
      }
    } on DioException catch (e) {
      catapi.clearStoredToken();
      if (e.response?.statusCode == 302) {
        log('Redirect detected to: ${e.response?.headers.value('location')}');
      }
      return Left(MainFailurs.clientFailure());
    }
  }
}
