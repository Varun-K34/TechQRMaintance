import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/domain/usermodel/update_user_repo.dart';
import 'package:techqrmaintance/domain/usermodel/user_model_list/user_model_list_saas/user_model.dart';

part 'update_user_event.dart';
part 'update_user_state.dart';
part 'update_user_bloc.freezed.dart';

@injectable
class UpdateUserBloc extends Bloc<UpdateUserEvent, UpdateUserState> {
  final UpdateUserRepo updateUserRepo;
  UpdateUserBloc(this.updateUserRepo) : super(UpdateUserState.initial()) {
    on<UpdateUser>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
      ));
      await updateUserRepo
          .userupdateRepo(id: event.id, usermodel: event.model)
          .then((value) {
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
