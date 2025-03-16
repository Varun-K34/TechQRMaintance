part of 'service_request_bloc.dart';

@freezed
class ServiceRequestState with _$ServiceRequestState {
  const factory ServiceRequestState({
    required List<ServicesModel> servicelist,
    required bool isLoading,
    required bool isFailure,
  }) = _ServiceRequestState;

  factory ServiceRequestState.initial() {
    return ServiceRequestState(
      servicelist: [],
      isLoading: false,
      isFailure: false,
    );
  }
}
