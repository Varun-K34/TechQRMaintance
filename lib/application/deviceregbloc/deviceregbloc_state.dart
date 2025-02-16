part of 'deviceregbloc_bloc.dart';

@freezed
class DeviceregblocState with _$DeviceregblocState {
  const factory DeviceregblocState({
    required String text,
    required bool isLoading,
    required bool isFailure,
  }) = _DeviceregblocState;

  factory DeviceregblocState.initial() {
    return DeviceregblocState(
      text: "",
      isLoading: false,
      isFailure: false,
    );
  }
}
