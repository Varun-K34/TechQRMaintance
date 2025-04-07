part of 'notify_setting_bloc.dart';

@freezed
class NotifySettingState with _$NotifySettingState {
const factory NotifySettingState({
  required bool isLoading,
  required bool isError,
  required List<NotifyModel> notifyList,
}) = _NotifySettingState;


   factory NotifySettingState.initial() {
    return NotifySettingState(
      isLoading: false,
      isError: false,
      notifyList: [],
    );
  }
}
