import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/domain/catagorymodel/catagory_get_repo.dart';
import 'package:techqrmaintance/domain/catagorymodel/catagory_model/catagory_model.dart';

part 'catogory_event.dart';
part 'catogory_state.dart';
part 'catogory_bloc.freezed.dart';

@injectable
class CatogoryBloc extends Bloc<CatogoryEvent, CatogoryState> {
  final CatagoryGetRepo catagoryGetRepo;
  CatogoryBloc(this.catagoryGetRepo) : super(CatogoryState.initial()) {
    on<GetCatogory>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
      ));
      await catagoryGetRepo.getCatagoryList().then(
        (catagory) {
          catagory.fold(
            (l) => emit(state.copyWith(
              isFailure: true,
              isLoading: false,
            )),
            (r) => emit(state.copyWith(
              complaints: r,
              isFailure: false,
              isLoading: false,
            )),
          );
        },
      );
    });
  }
}
