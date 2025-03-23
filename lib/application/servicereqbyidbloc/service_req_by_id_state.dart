part of 'service_req_by_id_bloc.dart';

@freezed
class ServiceReqByIdState with _$ServiceReqByIdState {
  const factory ServiceReqByIdState({
    required ServicesModel servicesModel,
    required bool isLoading,
    required bool isFailurs,
  }) = _ServiceReqByIdState;

  factory ServiceReqByIdState.initial() {
    return ServiceReqByIdState(
      servicesModel: ServicesModel(),
      isLoading: false,
      isFailurs: false,
    );
  }
}
