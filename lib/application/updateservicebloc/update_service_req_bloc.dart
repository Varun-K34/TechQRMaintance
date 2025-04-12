import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/application/getidregbloc/getidregbloc_bloc.dart';
import 'package:techqrmaintance/domain/servicerequestmodel/service_update_repo.dart';
import 'package:techqrmaintance/domain/servicerequestmodel/services_request_saas/services_model.dart';

part 'update_service_req_event.dart';
part 'update_service_req_state.dart';
part 'update_service_req_bloc.freezed.dart';

@injectable
class UpdateServiceReqBloc
    extends Bloc<UpdateServiceReqEvent, UpdateServiceReqState> {
  final ServiceUpdateRepo serviceUpdateRepo;
  UpdateServiceReqBloc(this.serviceUpdateRepo)
      : super(UpdateServiceReqState.initial()) {
    on<UpdateService>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
      ));
      await serviceUpdateRepo
          .updateServiceRequest(id: event.id, servicesModel: event.model)
          .then((value) {
        value.fold((l) {
          emit(state.copyWith(
            isLoading: false,
            isFailure: true,
          ));
        }, (r) {
          emit(state.copyWith(
            isLoading: false,
            respons: r,
            isFailure: false,
          ));
        });
      });
    });
    on<Reset>(
      (event, emit) {
        emit(UpdateServiceReqState.initial());
      },
    );
  }
}
