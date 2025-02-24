part of 'maintenancehistory_bloc.dart';

@freezed
class MaintenancehistoryState with _$MaintenancehistoryState {

const factory MaintenancehistoryState({
    required List<HisData> history,
    required bool isLoading,
    required Option<Either<MainFailurs, List<HisData>>> failureOrSuccessOption,
  }) = _MaintenancehistoryState;

   factory MaintenancehistoryState.initial() {
    return MaintenancehistoryState(
      history: [],
      isLoading: false,
      failureOrSuccessOption: none(),
    );
  }
}
