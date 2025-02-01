part of 'authbloc_bloc.dart';

@freezed
class AuthblocEvent with _$AuthblocEvent {
  /*
   * signup
   */
  const factory AuthblocEvent.signup({required AuthRegModel authmodel}) = Signup;
}