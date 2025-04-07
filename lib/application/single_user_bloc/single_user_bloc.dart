import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/domain/usermodel/single_user_repo.dart';
import 'package:techqrmaintance/domain/usermodel/user_model_list/user_model_list_saas/user_model.dart';

part 'single_user_event.dart';
part 'single_user_state.dart';
part 'single_user_bloc.freezed.dart';

@injectable
class SingleUserBloc extends Bloc<SingleUserEvent, SingleUserState> {
  final SingleUserRepo singleUserRepo;
  SingleUserBloc(this.singleUserRepo) : super(SingleUserState.initial()) {
    on<SingleUser>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
      ));
      await singleUserRepo.getSingleUserRepo(id: event.id).then((value) {
        value.fold(
          (l) => emit(state.copyWith(
            isLoading: false,
            isError: true,
          )),
          (r) => emit(state.copyWith(
            isLoading: false,
            isError: false,
            user: r,
          )),
        );
      });
    });
  }
}
