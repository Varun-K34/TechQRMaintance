part of 'authbloc_bloc.dart';

@freezed
class AuthblocState with _$AuthblocState {
  const factory AuthblocState.authenticatedstate({
    required List<AuthRegModel> authlist,
    required bool isloading,
    required bool isError,
  }) = Authenticatedstate;

  factory AuthblocState.initial() => const AuthblocState.authenticatedstate(
        authlist: [],
        isloading: false,
        isError: false,
      );
}
