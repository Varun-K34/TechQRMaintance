part of 'customer_bloc.dart';

@freezed
class CustomerEvent with _$CustomerEvent {
  /*
   * Signup for Customer
   */
  const factory CustomerEvent.signup({required CustomerModelSaas customerModel}) =
      CustomerSignup;
}
