part of 'mark_attentance_user_bloc.dart';

@freezed
class MarkAttentanceUserState with _$MarkAttentanceUserState {
  const factory MarkAttentanceUserState({
    required bool isLoading,
    required bool isFailure,
    required String success,
  }) = _MarkAttentanceUserState;
  factory MarkAttentanceUserState.initial() {
    return MarkAttentanceUserState(
      isLoading: false,
      isFailure: false,
      success: "",
    );
  }
}
