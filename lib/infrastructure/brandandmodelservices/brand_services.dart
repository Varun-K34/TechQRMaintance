import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/core/strings.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/modelandbrandmodel/brand_model/brand_model.dart';
import 'package:techqrmaintance/domain/modelandbrandmodel/brand_repo.dart';
import 'package:techqrmaintance/infrastructure/api_token_generator.dart';

@LazySingleton(as: DeiceBrandRepo)
class BrandServices implements DeiceBrandRepo {
  ApiServices brandapi = ApiServices();

  @override
  Future<Either<MainFailurs, List<BrandModel>>> getDeviceBrand() async {
    try {
      final Response brandrespo = await brandapi.dio.get(kBaseURL + kBrand);

      if (brandrespo.statusCode == 200) {
        final List<dynamic> brandListJson = brandrespo.data["data"];
        List<BrandModel> brandList =
            brandListJson.map((json) => BrandModel.fromJson(json)).toList();
        return Right(brandList);
      } else {
        log('error ', name: "brand services");
        brandapi.clearStoredToken();
        return Left(MainFailurs.serverFailure());
      }
    } on DioException catch (e) {
      log(e.toString());
      brandapi.clearStoredToken();
      return Left(MainFailurs.clientFailure());
    } catch (e) {
      log('error : $e', name: "brand services");
      brandapi.clearStoredToken();
      return Left(MainFailurs.clientFailure());
    }
  }
}
