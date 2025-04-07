part of 'single_user_bloc.dart';

@freezed
class SingleUserState with _$SingleUserState {
  const factory SingleUserState({
    required bool isLoading,
    required bool isError,
    required UserModel user,
  }) = _SingleUserState;
  factory SingleUserState.initial() {
    return SingleUserState(
      isLoading: false,
      isError: false,
      user: UserModel(),
    );
  }
}
