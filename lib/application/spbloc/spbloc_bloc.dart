// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/domain/complaintmodel/complanits_list/customer.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/core/spstoreduser/sp_stored_repo.dart';

part 'spbloc_event.dart';
part 'spbloc_state.dart';
part 'spbloc_bloc.freezed.dart';

@injectable
class SpblocBloc extends Bloc<SpblocEvent, SpblocState> {
  final SpStoredUser spRepo;
  SpblocBloc(this.spRepo) : super(SpblocState.initial()) {
    on<GetSpStoredData>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
      ));
      await spRepo.getSpUser().then((user) {
        user.fold(
          (MainFailurs l) => emit(state.copyWith(
            isLoading: false,
            isFailure: true,
          )),
          (Customer r) => emit(state.copyWith(
            isLoading: false,
            isFailure: false,
            userData: r,
          )),
        );
      });
    });
  }
}
