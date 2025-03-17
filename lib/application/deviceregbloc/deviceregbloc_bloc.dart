// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/deviceregmodel/device_reg_repo.dart';
import 'package:techqrmaintance/domain/deviceregmodel/devices_reg_model_saas/device_model_saas.dart';

part 'deviceregbloc_event.dart';
part 'deviceregbloc_state.dart';
part 'deviceregbloc_bloc.freezed.dart';

@injectable
class DeviceregblocBloc extends Bloc<DeviceregblocEvent, DeviceregblocState> {
  final DeviceRegRepo devicereg;
  DeviceregblocBloc(this.devicereg) : super(DeviceregblocState.initial()) {
    on<RegDevice>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
      ));
      await devicereg.createDevice(deviceModel: event.model).then(
        (device) {
          device.fold(
            (MainFailurs l) => emit(state.copyWith(
              isFailure: true,
              isLoading: false,
            )),
            (String r) => emit(state.copyWith(
              text: r,
              isFailure: false,
              isLoading: false,
            )),
          );
        },
      );
    });
  }
}
