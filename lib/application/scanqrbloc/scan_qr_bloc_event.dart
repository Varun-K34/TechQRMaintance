part of 'scan_qr_bloc_bloc.dart';

@freezed
class ScanQrBlocEvent with _$ScanQrBlocEvent {
  const factory ScanQrBlocEvent.getScanData({required String? id}) = GetScanData;
}