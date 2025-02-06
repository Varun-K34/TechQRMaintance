part of 'checkbloc_bloc.dart';

@freezed
class CheckblocState with _$CheckblocState {
  const factory CheckblocState({
    required bool unauthenticated,
    required bool authenticated,
    required bool failure,
  }) = _CheckblocState;

  factory CheckblocState.initial() {
    return CheckblocState(
      unauthenticated: false,
      authenticated: false,
      failure: false,
    );
  }
}
