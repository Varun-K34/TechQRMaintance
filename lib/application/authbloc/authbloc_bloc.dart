import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:techqrmaintance/domain/authregmodel/auth_repo.dart';
import 'package:techqrmaintance/domain/authregmodel/model/auth_reg_model.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:injectable/injectable.dart';

part 'authbloc_event.dart';
part 'authbloc_state.dart';
part 'authbloc_bloc.freezed.dart';

@Injectable()
class AuthblocBloc extends Bloc<AuthblocEvent, AuthblocState> {
  final AuthRepoReg authServices;
  AuthblocBloc(this.authServices) : super(AuthblocState.initial()) {
    on<Signup>((event, emit) async {
      emit(AuthblocState.authenticatedstate(
        authlist: [],
        isloading: true,
        isError: false,
      ));
      final result =
          await authServices.getAuthRespo(authModel: event.authmodel);

      final state = result.fold(
        (MainFailurs l) {
          return AuthblocState.authenticatedstate(
            authlist: [],
            isloading: false,
            isError: true,
          );
        },
        (AuthRegModel r) {
          return AuthblocState.authenticatedstate(
            authlist: [r],
            isloading: false,
            isError: false,
          );
        },
      );
      emit(state);
    });
  }
}
