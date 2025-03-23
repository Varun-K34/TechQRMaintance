import 'package:dartz/dartz.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/techperfomencemodel/tech_perfimence_model/tech_perfimence_model.dart';

abstract class TechPerfomenceRepo {
  Future<Either<MainFailurs, TechPerfimenceModel>> getTechPerfomence(
      {required String techId});
}
