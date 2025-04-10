import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/domain/araemodel/area_model/areasaas.dart';
import 'package:techqrmaintance/domain/araemodel/get_area_repo.dart';

part 'area_event.dart';
part 'area_state.dart';
part 'area_bloc.freezed.dart';

@injectable
class AreaBloc extends Bloc<AreaEvent, AreaState> {
  final GetAreaRepo getAreaRepo;
  AreaBloc(this.getAreaRepo) : super(AreaState.initial()) {
    on<GetArea>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      await getAreaRepo.getArea().then(
            (area) => area.fold(
              (failure) => emit(state.copyWith(
                isFailure: true,
                isLoading: false,
              )),
              (sucess) => emit(state.copyWith(
                isFailure: false,
                isLoading: false,
                areaList: sucess,
              )),
            ),
          );
    });
  }
}
