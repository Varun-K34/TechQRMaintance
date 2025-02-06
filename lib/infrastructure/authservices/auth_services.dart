import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/core/strings.dart';
import 'package:techqrmaintance/domain/authregmodel/auth_repo.dart';
import 'package:techqrmaintance/domain/authregmodel/model/auth_reg_model.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/infrastructure/api_token_generator.dart';

@LazySingleton(as: AuthRepoReg)
class AuthServices implements AuthRepoReg {
  ApiServices api = ApiServices();
  @override
  Future<Either<MainFailurs, AuthRegModel>> getAuthRespo(
      {required AuthRegModel authModel}) async {
    try {
      log(authModel.toJson().toString(), name: "AuthServices");
      final Response response =
          await api.dio.post(kBaseURL + kuserADD, data: authModel.toJson());
      log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final authSucessList = AuthRegModel.fromJson(response.data);
        return Right(authSucessList);
      } else {
        await api.clearStoredToken();
        return Left(MainFailurs.serverFailure());
      }
    } on DioException catch (e) {
      await api.clearStoredToken();
      if (e.response?.statusCode == 302) {
        log('Redirect detected to: ${e.response?.headers.value('location')}');
      }
      return Left(MainFailurs.clientFailure());
    }
  }
}
