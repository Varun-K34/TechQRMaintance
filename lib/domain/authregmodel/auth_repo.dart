import 'package:dartz/dartz.dart';
import 'package:techqrmaintance/domain/authregmodel/model/auth_reg_model.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';

abstract class AuthRepoReg {
  Future<Either<MainFailurs, AuthRegModel>> getAuthRespo(
      {required AuthRegModel authModel});
}