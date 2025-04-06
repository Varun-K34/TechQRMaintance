// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/usermodel/user_log_repo.dart';
import 'package:techqrmaintance/domain/usermodel/user_model_list/user_model_list_saas/user_model.dart';

part 'logbloc_event.dart';
part 'logbloc_state.dart';
part 'logbloc_bloc.freezed.dart';

@injectable
class LogblocBloc extends Bloc<LogblocEvent, LogblocState> {
  final UserLogRepo userLogRepository;
  LogblocBloc(this.userLogRepository) : super(LogblocState.initial()) {
    on<Login>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      await userLogRepository.getUserLogList(event.email).then((user) {
        user.fold(
          (MainFailurs l) =>
              emit(state.copyWith(isLoading: false, isFailure: true)),
          (UserModel r) => emit(state.copyWith(
              isSuccess: true,
              isLoading: false,
              isFailure: false,
              userModelLists: r)),
        );
      });
    });

    on<Reset>(
      (event, emit) {
        emit(LogblocState.initial());
      },
    );
  }
}
