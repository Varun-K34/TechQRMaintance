import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/domain/core/requestqrrepo/req_scan_qr_repo.dart';
import 'package:techqrmaintance/domain/deviceregmodel/devices_reg_model_saas/qr_code.dart';

part 'request_scan_qr_endpoind_event.dart';
part 'request_scan_qr_endpoind_state.dart';
part 'request_scan_qr_endpoind_bloc.freezed.dart';

@injectable
class RequestScanQrEndpoindBloc
    extends Bloc<RequestScanQrEndpoindEvent, RequestScanQrEndpoindState> {
  final ReqScanQrRepo reqScanQrRepo;
  RequestScanQrEndpoindBloc(this.reqScanQrRepo)
      : super(RequestScanQrEndpoindState.initial()) {
    on<GetQrdata>((event, emit) async{
     await event.map(
        getQrdata: (e) async {
          emit(state.copyWith(
            isLoading: true,
          ));
          final res = await reqScanQrRepo.getQrCodedetail(e.id);
          res.fold((l) {
            emit(state.copyWith(
              isLoading: false,
              isFailure: true,
            ));
          }, (r) {
            emit(state.copyWith(
              isLoading: false,
              qrData: r,
              isFailure: false,
            ));
          });
        },
      );
    });
  }
}
