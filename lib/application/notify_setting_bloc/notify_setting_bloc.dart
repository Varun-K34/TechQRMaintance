import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/domain/settingnotify/get_setting_notify_repo.dart';
import 'package:techqrmaintance/domain/settingnotify/setting_notify_model/notify_model.dart';

part 'notify_setting_event.dart';
part 'notify_setting_state.dart';
part 'notify_setting_bloc.freezed.dart';

@injectable
class NotifySettingBloc extends Bloc<NotifySettingEvent, NotifySettingState> {
  final GetSettingNotifyRepo getSettingNotifyRepo;
  NotifySettingBloc(this.getSettingNotifyRepo)
      : super(NotifySettingState.initial()) {
    on<GetNotify>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
      ));
      await getSettingNotifyRepo.getSettingNotifyRepo().then((value) {
        value.fold(
          (l) => emit(state.copyWith(
            isLoading: false,
            isError: true,
          )),
          (r) => emit(state.copyWith(
            isLoading: false,
            notifyList: r,
            isError: false,
          )),
        );
      });
    });
  }
}
