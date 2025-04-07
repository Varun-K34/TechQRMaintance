import 'package:dartz/dartz.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/settingnotify/setting_notify_model/notify_model.dart';

abstract class GetSettingNotifyRepo {
  Future<Either<MainFailurs, List<NotifyModel>>> getSettingNotifyRepo();
}
