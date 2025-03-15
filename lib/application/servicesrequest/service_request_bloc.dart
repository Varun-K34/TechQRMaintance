import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/domain/servicerequestmodel/servicerequest_repo.dart';
import 'package:techqrmaintance/domain/servicerequestmodel/services_request_saas/services_model.dart';

part 'service_request_event.dart';
part 'service_request_state.dart';
part 'service_request_bloc.freezed.dart';

@injectable
class ServiceRequestBloc
    extends Bloc<ServiceRequestEvent, ServiceRequestState> {
  final ServicesRequestRepo service;
  ServiceRequestBloc(this.service) : super(ServiceRequestState.initial()) {
    on<GetservicesReq>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
        ),
      );
      await service.getServiceRequest().then(
            (serviveRequest) => serviveRequest.fold(
              (l) => emit(
                state.copyWith(
                  isFailure: true,
                  isLoading: false,
                ),
              ),
              (r) => emit(
                state.copyWith(
                  servicelist: r,
                  isLoading: false,
                  isFailure: false,
                ),
              ),
            ),
          );
    });
  }
}
