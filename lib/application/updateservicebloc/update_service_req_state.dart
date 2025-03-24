part of 'update_service_req_bloc.dart';

@freezed
class UpdateServiceReqState with _$UpdateServiceReqState {
  const factory UpdateServiceReqState(
      {required String respons,
      required bool isLoading,
      required bool isFailure}) = _UpdateServiceReqState;
  factory UpdateServiceReqState.initial() {
    return UpdateServiceReqState(
      respons: "",
      isLoading: false,
      isFailure: false,
    );
  }
}
