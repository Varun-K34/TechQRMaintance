part of 'complaintdetailbloc_bloc.dart';

@freezed
class ComplaintdetailblocState with _$ComplaintdetailblocState {
  const factory ComplaintdetailblocState({
    required Datum complaints,
    required bool isLoading,
    required bool isFailure,
  }) = _ComplaintdetailblocState;

  factory ComplaintdetailblocState.initial() {
    return ComplaintdetailblocState(
      complaints: Datum(),
      isLoading: false,
      isFailure: false,
    );
  }
}
