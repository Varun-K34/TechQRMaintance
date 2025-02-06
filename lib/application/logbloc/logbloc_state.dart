part of 'logbloc_bloc.dart';

@freezed
class LogblocState with _$LogblocState {
  const factory LogblocState({
    required Customer userModelLists,
    required bool isLoading,
    required bool isFailure,
    required bool isSuccess,
  }) = _LogblocState;

  factory LogblocState.initial() {
    return LogblocState(
      userModelLists: Customer(),
      isLoading: false,
      isFailure: false,
      isSuccess: false,
    );
  }
}
