part of 'spbloc_bloc.dart';

@freezed
class SpblocState with _$SpblocState {
  const factory SpblocState({
    required int? userData,
    required bool isLoading,
    required bool isFailure,
  }) = _ComplaintblocState;

  factory SpblocState.initial() {
    return SpblocState(
      userData: null,
      isLoading: false,
      isFailure: false,
    );
  }
}
