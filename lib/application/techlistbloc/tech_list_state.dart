part of 'tech_list_bloc.dart';

@freezed
class TechListState with _$TechListState {
  const factory TechListState({
    required List<UserModel> techlist,
    required bool isLoading,
    required bool isFailure,
  }) = _TechListState;
  factory TechListState.initial() {
    return TechListState(
      techlist: [],
      isLoading: false,
      isFailure: false,
    );
  }
}
