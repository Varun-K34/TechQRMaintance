part of 'service_req_by_id_bloc.dart';

@freezed
class ServiceReqByIdEvent with _$ServiceReqByIdEvent {
  const factory ServiceReqByIdEvent.getservicebyid({required String id}) =
      Getservicebyid;
}
