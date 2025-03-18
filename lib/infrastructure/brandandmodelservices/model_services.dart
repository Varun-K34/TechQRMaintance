import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/core/strings.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/modelandbrandmodel/device_model_model_repo.dart';
import 'package:techqrmaintance/domain/modelandbrandmodel/device_models_model/device_models_model.dart';
import 'package:techqrmaintance/infrastructure/api_token_generator.dart';

@LazySingleton(as: DeviceModelRepo)
class ModelServices implements DeviceModelRepo {
  ApiServices modelapi = ApiServices();
  @override
  Future<Either<MainFailurs, List<DeviceModelsModel>>> getDeviceModel() async {
    try {
      final Response moselrespo = await modelapi.dio.get(kBaseURL + kmodel);

      if (moselrespo.statusCode == 200) {
        final List<dynamic> moselListJson = moselrespo.data["data"];
        List<DeviceModelsModel> modelList = moselListJson
            .map((json) => DeviceModelsModel.fromJson(json))
            .toList();
        return Right(modelList);
      } else {
        log('error model ', name: "model services");
        modelapi.clearStoredToken();
        return Left(MainFailurs.serverFailure());
      }
    } on DioException catch (e) {
      log(e.toString());
      modelapi.clearStoredToken();
      return Left(MainFailurs.clientFailure());
    } catch (e) {
      log('error $e', name: "model services");
      modelapi.clearStoredToken();
      return Left(MainFailurs.clientFailure());
    }
  }
}
