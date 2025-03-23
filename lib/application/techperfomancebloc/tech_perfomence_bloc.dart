import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/domain/techperfomencemodel/tech_perfimence_model/tech_perfimence_model.dart';
import 'package:techqrmaintance/domain/techperfomencemodel/tech_perfomence_repo.dart';

part 'tech_perfomence_event.dart';
part 'tech_perfomence_state.dart';
part 'tech_perfomence_bloc.freezed.dart';

@injectable
class TechPerfomenceBloc
    extends Bloc<TechPerfomenceEvent, TechPerfomenceState> {
  final TechPerfomenceRepo techPerfomenceRepo;
  TechPerfomenceBloc(this.techPerfomenceRepo)
      : super(TechPerfomenceState.initial()) {
    on<GetTechPerfomance>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
      ));
      await techPerfomenceRepo
          .getTechPerfomence(techId: event.techid)
          .then((value) {
        value.fold((l) {
          emit(state.copyWith(
            isLoading: false,
            isFailure: true,
          ));
        }, (r) {
          emit(state.copyWith(
            isLoading: false,
            techPerfimence: r,
            isFailure: false,
          ));
        });
      });
    });
  }
}
