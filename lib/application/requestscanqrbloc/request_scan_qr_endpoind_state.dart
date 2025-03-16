part of 'request_scan_qr_endpoind_bloc.dart';

@freezed
class RequestScanQrEndpoindState with _$RequestScanQrEndpoindState {
  const factory RequestScanQrEndpoindState({
    required QrCode qrData,
    required bool isLoading,
    required bool isFailure,
  }) = _ComplaintblocState;

  factory RequestScanQrEndpoindState.initial() {
    return RequestScanQrEndpoindState(
      qrData: QrCode(),
      isLoading: false,
      isFailure: false,
    );
  }
}
