import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/domain/usermodel/technitian_list_repo.dart';
import 'package:techqrmaintance/domain/usermodel/user_model_list/user_model_list_saas/user_model.dart';

part 'tech_list_event.dart';
part 'tech_list_state.dart';
part 'tech_list_bloc.freezed.dart';

@injectable
class TechListBloc extends Bloc<TechListEvent, TechListState> {
  final TechnitianListRepo technitianListRepo;

  TechListBloc(this.technitianListRepo) : super(TechListState.initial()) {
    on<Gettechlist>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      await technitianListRepo.getTecnitian().then(
            (tecnitian) => tecnitian.fold(
              (l) => emit(state.copyWith(
                isFailure: true,
                isLoading: false,
              )),
              (r) => emit(state.copyWith(
                techlist: r,
                isFailure: false,
                isLoading: false,
              )),
            ),
          );
    });
  }
}
