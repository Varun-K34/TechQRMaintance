import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/core/strings.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/historymodel/maintance_history/hisdata.dart';
import 'package:techqrmaintance/domain/historymodel/maintance_history/maintance_history.dart';
import 'package:techqrmaintance/domain/historymodel/maintance_history_repo.dart';
import 'package:techqrmaintance/infrastructure/api_token_generator.dart';

@LazySingleton(as: MaintanceHistoryRepo)
class MaintanceHistoryServices implements MaintanceHistoryRepo {
  ApiServices historyapi = ApiServices();
  @override
  Future<Either<MainFailurs, List<HisData>>> getMaintanceHistory() async {
    try {
      final Response history =
          await historyapi.dio.get(kBaseURL + kmaintanceHistory);
      if (history.statusCode == 200) {
        final jsonResponse = history.data;
        if (jsonResponse != null && jsonResponse['data'] != null) {
          final historySuccess =
              MaintanceHistory.fromJson(jsonResponse['data']);
          return Right(historySuccess.data!);
        } else {
          return Left(MainFailurs.serverFailure());
        }
      } else {
        return Left(MainFailurs.clientFailure());
      }
    } on DioException catch (e) {
      historyapi.clearStoredToken();
      if (e.response?.statusCode == 302) {
        log('Redirect detected to: ${e.response?.headers.value('location')}');
      }
      return Left(MainFailurs.clientFailure());
    } catch (e) {
      historyapi.clearStoredToken();
      return Left(MainFailurs.clientFailure());
    }
  }
}
