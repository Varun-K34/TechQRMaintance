// ignore: depend_on_referenced_packages
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/domain/modelandbrandmodel/device_model_model_repo.dart';
import 'package:techqrmaintance/domain/modelandbrandmodel/device_models_model/device_models_model.dart';

part 'model_and_brand_event.dart';
part 'model_and_brand_state.dart';
part 'model_and_brand_bloc.freezed.dart';

@injectable
class ModelAndBrandBloc extends Bloc<ModelAndBrandEvent, ModelAndBrandState> {
  final DeviceModelRepo modelRepo;
  ModelAndBrandBloc(this.modelRepo) : super(ModelAndBrandState.initial()) {
    log("model call",name: "model bloc");
    on<GetModel>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
      ));
      await modelRepo.getDeviceModel().then(
            (brand) => brand.fold(
              (l) => emit(state.copyWith(
                isFailure: true,
                isLoading: false,
              )),
              (r) => emit(state.copyWith(
                modelList: r,
                isFailure: false,
                isLoading: false,
              )),
            ),
          );
    });
  }
}
