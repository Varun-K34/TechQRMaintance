// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/scanqrmodel/scan_qr_model/scan_qr_model.dart';
import 'package:techqrmaintance/domain/scanqrmodel/scan_qr_repo.dart';

part 'scan_qr_bloc_event.dart';
part 'scan_qr_bloc_state.dart';
part 'scan_qr_bloc_bloc.freezed.dart';

@injectable
class ScanQrBlocBloc extends Bloc<ScanQrBlocEvent, ScanQrBlocState> {
  final ScanQRRepo scanrepo;
  ScanQrBlocBloc(this.scanrepo) : super(ScanQrBlocState.initial()) {
    on<GetScanData>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
      ));
      await scanrepo.getScanQrData(id: event.id!).then(
        (qr) {
          qr.fold(
            (MainFailurs l) => emit(state.copyWith(
              isFailure: true,
              isLoading: false,
            )),
            (ScanQrModel r) => emit(state.copyWith(
              scanData: r,
              isFailure: false,
              isLoading: false,
            )),
          );
        },
      );
    });
  }
}
