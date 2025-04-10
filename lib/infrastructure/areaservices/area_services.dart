import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/core/strings.dart';
import 'package:techqrmaintance/domain/araemodel/area_model/areasaas.dart';
import 'package:techqrmaintance/domain/araemodel/get_area_repo.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/infrastructure/api_token_generator.dart';

@LazySingleton(as: GetAreaRepo)
class AreaServices implements GetAreaRepo {
  ApiServices areaapi = ApiServices();
  @override
  Future<Either<MainFailurs, List<AreaModelSaas>>> getArea() async {
    try {
      final Response respo = await areaapi.dio.get(kBaseURL + karea);
      if (respo.statusCode == 200) {
        final arealist = respo.data;
        if (arealist is Map<String, dynamic> && arealist.containsKey('data')) {
          final List<dynamic> dataList = arealist['data'];
          final List<AreaModelSaas> araelists =
              dataList.map((e) => AreaModelSaas.fromJson(e)).toList();

          return Right(araelists);
        }
      } else {
        return left(MainFailurs.serverFailure());
      }
    } on DioException catch (e) {
      log('DioException: ${e.message}', error: e);
      await areaapi.clearStoredToken();
      return Left(MainFailurs.serverFailure());
    } catch (e) {
      log('Unexpected error: ${e.toString()}',
          error: e, stackTrace: StackTrace.current);
      return Left(MainFailurs.clientFailure());
    }
    // Ensure all code paths return a value
    return Left(MainFailurs.clientFailure());
  }
}
