import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/core/strings.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/techperfomencemodel/tech_perfimence_model/tech_perfimence_model.dart';
import 'package:techqrmaintance/domain/techperfomencemodel/tech_perfomence_repo.dart';
import 'package:techqrmaintance/infrastructure/api_token_generator.dart';

@LazySingleton(as: TechPerfomenceRepo)
class TechPerfomenceServices implements TechPerfomenceRepo {
  ApiServices performancesapi = ApiServices();
  @override
  Future<Either<MainFailurs, TechPerfimenceModel>> getTechPerfomence(
      {required String techId}) async {
    try {
      //log(kBaseURL + kTechPerfomence + techId,name: 'TechPerfomenceModel 3');
      final Response techrespo =
          await performancesapi.dio.get(kBaseURL + kTechPerfomence + techId);
      //log(techrespo.data.toString(),name: 'TechPerfomenceModel 2');
      if (techrespo.statusCode == 200) {
        final TechPerfimenceModel techperfomence =
            TechPerfimenceModel.fromJson(techrespo.data);
        //log(techperfomence.toString(),name: 'TechPerfomenceModel 1');
        return Right(techperfomence);
      } else {
        return Left(MainFailurs.serverFailure());
      }
    } catch (e) {
      performancesapi.clearStoredToken();
      return Left(MainFailurs.clientFailure());
    }
  }
}
