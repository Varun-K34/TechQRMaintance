import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/core/strings.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/inventrymodel/inventries_model/inventry.dart';
import 'package:techqrmaintance/domain/inventrymodel/inventry_repo.dart';
import 'package:techqrmaintance/infrastructure/api_token_generator.dart';

@LazySingleton(as: InventryRepo)
class InventriesServices implements InventryRepo {
  ApiServices inventriesapi = ApiServices();
  @override
  Future<Either<MainFailurs, List<Inventry>>> getInventries() async {
    try {
      final Response inventrespo =
          await inventriesapi.dio.get(kBaseURL + kinventry);

      if (inventrespo.statusCode == 200) {
        final responseData = inventrespo.data;

        // Ensure 'data' exists and is a list
        if (responseData is Map<String, dynamic> &&
            responseData.containsKey('data')) {
          final List<dynamic> dataList = responseData['data'];

          final List<Inventry> invenadata =
              dataList.map((item) => Inventry.fromJson(item)).toList();
          return Right(invenadata);
        } else {
          return Left(MainFailurs.clientFailure());
        }
      } else {
        return Left(MainFailurs.clientFailure());
      }
    } on DioException catch (e) {
      log('DioException: ${e.message}', error: e);
      await inventriesapi.clearStoredToken();
      return Left(MainFailurs.serverFailure());
    } catch (e) {
      log('Unexpected error: ${e.toString()}',
          error: e, stackTrace: StackTrace.current);
      return Left(MainFailurs.clientFailure());
    }
  }
}
