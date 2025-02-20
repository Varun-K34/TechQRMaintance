part of 'customer_bloc.dart';

@freezed
class CustomerState with _$CustomerState {
  const factory CustomerState.signupState({
    required List<CustomerModel> customerList,
    required bool isLoading,
    required bool isError,
  }) = SignupState;

  factory CustomerState.initial() => const CustomerState.signupState(
        customerList: [],
        isLoading: false,
        isError: false,
      );
}
