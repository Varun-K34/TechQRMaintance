part of 'update_user_bloc.dart';

@freezed
class UpdateUserState with _$UpdateUserState {
  const factory UpdateUserState({
    required bool isLoading,
    required bool isError,
    required UserModel user,
  }) = _UpdateUserState;
  factory UpdateUserState.initial() {
    return UpdateUserState(
      isLoading: false,
      isError: false,
      user: UserModel(),
    );
  }
}
