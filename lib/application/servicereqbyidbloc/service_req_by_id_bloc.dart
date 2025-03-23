import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/domain/servicerequestmodel/services_req_call_by_id.dart';
import 'package:techqrmaintance/domain/servicerequestmodel/services_request_saas/services_model.dart';

part 'service_req_by_id_event.dart';
part 'service_req_by_id_state.dart';
part 'service_req_by_id_bloc.freezed.dart';

@injectable
class ServiceReqByIdBloc
    extends Bloc<ServiceReqByIdEvent, ServiceReqByIdState> {
  final ServicesReqCallByIdRepo servicesReqCallByIdRepo;
  ServiceReqByIdBloc(this.servicesReqCallByIdRepo)
      : super(ServiceReqByIdState.initial()) {
    on<Getservicebyid>(
      (event, emit) async {
        emit(
          state.copyWith(
            isLoading: true,
          ),
        );
        await servicesReqCallByIdRepo.getServicesReqCallById(id: event.id).then(
          (serv) {
            serv.fold(
              (l) {
                emit(state.copyWith(
                  isLoading: false,
                  isFailurs: true,
                ));
              },
              (r) {
                emit(
                  state.copyWith(
                    isLoading: false,
                    servicesModel: r,
                    isFailurs: false,
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
