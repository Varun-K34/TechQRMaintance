part of 'getidregbloc_bloc.dart';

@freezed
class GetidregblocState with _$GetidregblocState {
  const factory GetidregblocState({
    required int? id,
    required bool isLoading,
    required bool isFailure,
  }) = _GetidregblocState;

  factory GetidregblocState.initial() {
    return GetidregblocState(
      id: null,
      isLoading: false,
      isFailure: false,
    );
  }
}
