import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/core/spstoreduser/sp_stored_repo.dart';
import 'package:techqrmaintance/domain/usermodel/user_model_list/user_model_list_saas/user_model.dart';

@LazySingleton(as: SpStoredUser)
class SpStoredItem implements SpStoredUser {
  @override
  Future<Either<MainFailurs, int>> getSpUser() async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      int? userString = prefs.getInt("userID");
      if (userString != null) {
        log(userString.toString());
        //final userData = fromJson(jsonDecode(userString.toString()));
        return Right(userString);
      } else {
        return Left(MainFailurs.clientFailure());
      }
    } catch (e) {
      return Left(MainFailurs.serverFailure());
    }
  }
}
