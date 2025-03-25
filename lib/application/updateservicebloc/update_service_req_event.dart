part of 'update_service_req_bloc.dart';

@freezed
class UpdateServiceReqEvent with _$UpdateServiceReqEvent {
  const factory UpdateServiceReqEvent.updateService(
      {required String id, required ServicesModel model}) = UpdateService;

      const factory UpdateServiceReqEvent.reset() = Reset;
}
