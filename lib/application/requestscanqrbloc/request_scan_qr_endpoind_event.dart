part of 'request_scan_qr_endpoind_bloc.dart';

@freezed
class RequestScanQrEndpoindEvent with _$RequestScanQrEndpoindEvent {
  const factory RequestScanQrEndpoindEvent.getQrdata({required String id}) =
      GetQrdata;
}
