part of 'scan_qr_bloc_bloc.dart';

@freezed
class ScanQrBlocState with _$ScanQrBlocState {
  const factory ScanQrBlocState({
    required ScanQrModel scanData,
    required bool isLoading,
    required bool isFailure,
  }) = _ScanQrBlocState;

  factory ScanQrBlocState.initial() {
    return ScanQrBlocState(
      scanData: ScanQrModel(),
      isLoading: false,
      isFailure: false,
    );
  }
}
