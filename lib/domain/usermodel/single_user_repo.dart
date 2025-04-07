import 'package:dartz/dartz.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/usermodel/user_model_list/user_model_list_saas/user_model.dart';

abstract class SingleUserRepo {
  Future <Either <MainFailurs, UserModel>> getSingleUserRepo({required String id});
}