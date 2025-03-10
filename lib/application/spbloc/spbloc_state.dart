part of 'spbloc_bloc.dart';

@freezed
class SpblocState with _$SpblocState {
  const factory SpblocState({
    required UserModel userData,
    required bool isLoading,
    required bool isFailure,
  }) = _ComplaintblocState;

  factory SpblocState.initial() {
    return SpblocState(
      userData: UserModel(),
      isLoading: false,
      isFailure: false,
    );
  }
}
