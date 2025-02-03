part of 'complaintbloc_bloc.dart';

@freezed
class ComplaintblocState with _$ComplaintblocState {

const factory ComplaintblocState({
    required List<Datum> complaints,
    required bool isLoading,
    required bool isFailure,
  }) = _ComplaintblocState;

   factory ComplaintblocState.initial() {
    return ComplaintblocState(
      complaints: [],
      isLoading: false,
      isFailure: false,
    );
  }
}
