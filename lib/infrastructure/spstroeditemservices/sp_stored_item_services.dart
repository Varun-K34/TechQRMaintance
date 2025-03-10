import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/core/spstoreduser/sp_stored_repo.dart';
import 'package:techqrmaintance/domain/usermodel/user_model_list/user_model_list_saas/user_model.dart';

@LazySingleton(as: SpStoredUser)
class SpStoredItem implements SpStoredUser {
  @override
  Future<Either<MainFailurs, UserModel>> getSpUser() async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      String? userString = prefs.getString("userItem");
      if (userString != null) {
        final userData = UserModel.fromJson(jsonDecode(userString));
        return Right(userData);
      } else {
        return Left(MainFailurs.clientFailure());
      }
    } catch (e) {
      return Left(MainFailurs.serverFailure());
    }
  }
}
