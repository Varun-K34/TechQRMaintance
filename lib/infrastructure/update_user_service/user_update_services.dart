import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:techqrmaintance/core/strings.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/usermodel/update_user_repo.dart';
import 'package:techqrmaintance/domain/usermodel/user_model_list/user_model_list_saas/user_model.dart';
import 'package:techqrmaintance/infrastructure/api_token_generator.dart';

@LazySingleton(as: UpdateUserRepo)
class UserUpdateServices implements UpdateUserRepo {
  ApiServices updateuserapi = ApiServices();
  @override
  Future<Either<MainFailurs, UserModel>> userupdateRepo(
      {required String id, required UserModel usermodel}) async {
    try {
      Map<String, dynamic> sanitizedJson = usermodel.toJson();
      sanitizedJson.removeWhere((key, value) => value == null);
      log(sanitizedJson.toString(), name: "updateuserapi");
      log(kBaseURL + kuserADD + id, name: "updateuserapi");
      final Response repo = await updateuserapi.dio
          .put("$kBaseURL$kuserADD/$id", data: sanitizedJson);
      if (repo.statusCode == 200) {
        final UserModel updatedUser = UserModel.fromJson(repo.data);

        try {
          final SharedPreferences prefs = await SharedPreferences.getInstance();
          await prefs.remove('userItem');
          await prefs.remove('userID');

          String updatedJsonUser = jsonEncode(updatedUser);
          await prefs.setString("userItem", updatedJsonUser);
          await prefs.setInt('userID', updatedUser.id!);
          log("Updated user saved in SharedPreferences");
        } catch (e) {
          log("Error saving updated user in SharedPreferences: $e");
        }
        log("User updated successfully: ${updatedUser.toJson()}");

        return Right(updatedUser);
      } else {
        return Left(MainFailurs.serverFailure());
      }
    } on DioException catch (e) {
      log('DioException: ${e.message}', error: e);
      await updateuserapi.clearStoredToken();
      return Left(MainFailurs.serverFailure());
    } catch (e) {
      log('Unexpected error: ${e.toString()}',
          error: e, stackTrace: StackTrace.current);
      return Left(MainFailurs.clientFailure());
    }
  }
}
