import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/domain/complaintindetail/complaint_in_detail.dart';
import 'package:techqrmaintance/domain/complaintmodel/complanits_list/datum.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';

part 'complaintdetailbloc_event.dart';
part 'complaintdetailbloc_state.dart';
part 'complaintdetailbloc_bloc.freezed.dart';

@injectable
class ComplaintdetailblocBloc
    extends Bloc<ComplaintdetailblocEvent, ComplaintdetailblocState> {
  final DetailComplaintRepo individualComplaint;
  ComplaintdetailblocBloc(this.individualComplaint)
      : super(ComplaintdetailblocState.initial()) {
    on<GetindividualComplaint>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      await individualComplaint.getComplaintInDetail(id: event.id).then(
        (detailCopmplaint) {
          detailCopmplaint.fold(
            (MainFailurs l) => emit(state.copyWith(
              isLoading: false,
              isFailure: true,
            )),
            (Datum r) => emit(
              state.copyWith(
                complaints: r,
                isFailure: false,
                isLoading: false,
              ),
            ),
          );
        },
      );
    });
  }
}
