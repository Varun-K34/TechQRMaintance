import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/domain/core/mark_attentence/mark_attentance_repo.dart';

part 'mark_attentance_user_event.dart';
part 'mark_attentance_user_state.dart';
part 'mark_attentance_user_bloc.freezed.dart';

@injectable
class MarkAttentanceUserBloc
    extends Bloc<MarkAttentanceUserEvent, MarkAttentanceUserState> {
  final MarkAttentanceRepo markAttentanceRepo;
  MarkAttentanceUserBloc(this.markAttentanceRepo)
      : super(MarkAttentanceUserState.initial()) {
    on<MarkAttentance>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
        ),
      );
      await markAttentanceRepo
          .markAttenrance(attentanceString: event.presentOrNot)
          .then(
            (attentance) => attentance.fold(
              (l) => emit(
                state.copyWith(
                  isFailure: true,
                  isLoading: false,
                ),
              ),
              (r) => emit(
                state.copyWith(
                  isFailure: false,
                  success: r,
                  isLoading: false,
                ),
              ),
            ),
          );
    });
  }
}
