part of 'customer_bloc.dart';

@freezed
class CustomerState with _$CustomerState {
  const factory CustomerState.signupState({
    required int? customerList,
    required bool isLoading,
    required bool isError,
  }) = SignupState;

  factory CustomerState.initial() => const CustomerState.signupState(
        customerList: null,
        isLoading: false,
        isError: false,
      );
}
