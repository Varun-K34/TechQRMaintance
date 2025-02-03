import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/domain/complaintmodel/complaint_repo.dart';
import 'package:techqrmaintance/domain/complaintmodel/complanits_list/complanits_list.dart';
import 'package:techqrmaintance/domain/complaintmodel/complanits_list/datum.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';

part 'complaintbloc_event.dart';
part 'complaintbloc_state.dart';
part 'complaintbloc_bloc.freezed.dart';

@injectable
class ComplaintblocBloc extends Bloc<ComplaintblocEvent, ComplaintblocState> {
  final ComplaintRepo complaintRepo;
  ComplaintblocBloc(this.complaintRepo) : super(ComplaintblocState.initial()) {
    on<GetComplaintsTasks>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      await complaintRepo.getComplaintsList().then((complaints) {
        complaints.fold(
          (MainFailurs l) =>
              emit(state.copyWith(isLoading: false, isFailure: true)),
          (ComplanitsList r) => emit(state
              .copyWith(isLoading: false, isFailure: false, complaints: r.data!)),
        );
      });
    });
  }
}
