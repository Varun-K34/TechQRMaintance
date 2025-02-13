import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/domain/core/getidfordevicereg/get_id_for_device_reg.dart';

part 'getidregbloc_event.dart';
part 'getidregbloc_state.dart';
part 'getidregbloc_bloc.freezed.dart';

@injectable
class GetidregblocBloc extends Bloc<GetidregblocEvent, GetidregblocState> {
  final GetIdForDeviceRegRepo getIdRepo;
  GetidregblocBloc(this.getIdRepo) : super(GetidregblocState.initial()) {
    on<Getid>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
      ));
      await getIdRepo.getIdforRegerpo(email: event.email).then(
        (regval) {
          regval.fold(
            (l) {
              emit(state.copyWith(
                isFailure: true,
                isLoading: false,
              ));
            },
            (r) {
              emit(state.copyWith(
                id: r,
                isFailure: false,
                isLoading: false,
              ));
            },
          );
        },
      );
    });
  }
}
