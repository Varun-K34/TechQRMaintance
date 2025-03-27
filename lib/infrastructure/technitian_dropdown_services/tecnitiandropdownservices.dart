import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/core/strings.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/usermodel/technitian_list_repo.dart';
import 'package:techqrmaintance/domain/usermodel/user_model_list/user_model_list_saas/user_model.dart';
import 'package:techqrmaintance/domain/usermodel/user_model_list/user_model_list_saas/user_model_list_saas.dart';
import 'package:techqrmaintance/infrastructure/api_token_generator.dart';

@LazySingleton(as: TechnitianListRepo)
class Tecnitiandropdownservices implements TechnitianListRepo {
  ApiServices techapi = ApiServices();

  @override
  Future<Either<MainFailurs, List<UserModel>>> getTecnitian() async {
    try {
      final Response techrespo = await techapi.dio.get(kBaseURL + kuserADD);

      if (techrespo.statusCode == 200) {
        final techdata = UserModelListSaas.fromJson(techrespo.data);
        log(techdata.toString());
        return Right(techdata.data ?? []);
      } else {
        return Left(MainFailurs.serverFailure());
      }
    } catch (e) {
      if (e is DioException) {
        return Left(MainFailurs.clientFailure());
      }
      return Left(MainFailurs.clientFailure());
    }
  }
}
