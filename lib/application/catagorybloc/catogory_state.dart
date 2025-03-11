part of 'catogory_bloc.dart';

@freezed
class CatogoryState with _$CatogoryState {
  const factory CatogoryState({
    required CatagoryModel complaints,
    required bool isLoading,
    required bool isFailure,
  }) = _CatogoryState;

  factory CatogoryState.initial() {
    return CatogoryState(
      complaints: CatagoryModel(),
      isLoading: false,
      isFailure: false,
    );
  }
}
