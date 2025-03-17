// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/historymodel/history_maintenance/hisdata.dart';
import 'package:techqrmaintance/domain/historymodel/maintance_history_repo.dart';

part 'maintenancehistory_event.dart';
part 'maintenancehistory_state.dart';
part 'maintenancehistory_bloc.freezed.dart';

@injectable
class MaintenancehistoryBloc
    extends Bloc<MaintenancehistoryEvent, MaintenancehistoryState> {
  final MaintanceHistoryRepo maintanceHistoryRepo;
  MaintenancehistoryBloc(this.maintanceHistoryRepo)
      : super(MaintenancehistoryState.initial()) {
    on<Getmaintenencehistory>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        failureOrSuccessOption: none(),
      ));
      await maintanceHistoryRepo.getMaintanceHistory().then((history) {
        emit(
          history.fold(
            (l) => state.copyWith(
              isLoading: false,
              failureOrSuccessOption: Some(
                left(l),
              ),
            ),
            (r) => state.copyWith(
              isLoading: false,
              history: r,
              failureOrSuccessOption: some(
                right(r),
              ),
            ),
          ),
        );
      });
    });
  }
}
