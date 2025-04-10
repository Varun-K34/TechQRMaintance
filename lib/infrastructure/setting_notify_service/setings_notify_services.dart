import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/core/strings.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/settingnotify/get_setting_notify_repo.dart';
import 'package:techqrmaintance/domain/settingnotify/setting_notify_model/notify_model.dart';
import 'package:techqrmaintance/infrastructure/api_token_generator.dart';

@LazySingleton(as: GetSettingNotifyRepo)
class SetingsNotifyServices implements GetSettingNotifyRepo {
  ApiServices nofifyApi = ApiServices();
  @override
  Future<Either<MainFailurs, List<NotifyModel>>> getSettingNotifyRepo() async {
    try {
      final Response notyRespo =
          await nofifyApi.dio.get(kBaseURL + kSettingNotify);
      if (notyRespo.statusCode == 200) {
        final responseData = notyRespo.data;
        if (responseData is Map<String, dynamic> &&
            responseData.containsKey('data')) {
          final List<dynamic> dataList = responseData['data'];
          final List<NotifyModel> notifyData =
              dataList.map((item) => NotifyModel.fromJson(item)).toList();
          //log('NotifyData: $notifyData');
          return Right(notifyData);
        } else {
          return Left(const MainFailurs.serverFailure());
        }
      } else {
        return Left(const MainFailurs.serverFailure());
      }
    } on DioException catch (e) {
      log('DioException: ${e.message}', error: e);
      await nofifyApi.clearStoredToken();
      return Left(MainFailurs.serverFailure());
    } catch (e) {
      log('Unexpected error: ${e.toString()}',
          error: e, stackTrace: StackTrace.current);
      return Left(MainFailurs.clientFailure());
    }
  }
}
