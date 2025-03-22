// ignore: depend_on_referenced_packages
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/domain/modelandbrandmodel/brand_model/brand_model.dart';
import 'package:techqrmaintance/domain/modelandbrandmodel/brand_repo.dart';

part 'brand_and_model_event.dart';
part 'brand_and_model_state.dart';
part 'brand_and_model_bloc.freezed.dart';

@injectable
class BrandAndModelBloc extends Bloc<BrandAndModelEvent, BrandAndModelState> {
  final DeiceBrandRepo brandRepo;
  BrandAndModelBloc(this.brandRepo) : super(BrandAndModelState.initial()) {
    on<GetBrand>((event, emit) async {
      log("brand call", name: "brand bloc");
      emit(state.copyWith(
        isLoading: true,
      ));
      await brandRepo.getDeviceBrand().then(
            (brand) => brand.fold(
              (l) => emit(state.copyWith(
                isFailure: true,
                isLoading: false,
              )),
              (r) => emit(state.copyWith(
                brandList: r,
                isFailure: false,
                isLoading: false,
              )),
            ),
          );
    });
  }
}
