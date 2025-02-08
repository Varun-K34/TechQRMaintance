// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/domain/core/splashcheck/splash_check.dart';

part 'checkbloc_event.dart';
part 'checkbloc_state.dart';
part 'checkbloc_bloc.freezed.dart';

@injectable
class CheckblocBloc extends Bloc<CheckblocEvent, CheckblocState> {
  final SplashCheckRepo checkrepo;
  CheckblocBloc(this.checkrepo) : super(CheckblocState.initial()) {
    on<CheckLogOrNot>((event, emit) async {
      final result = await checkrepo.checkLoginOrNot();

      result.fold(
        (failure) {
          emit(state.copyWith(
            unauthenticated: false,
            authenticated: false,
            failure: true,
          ));
        },
        (isLoggedIn) {
          emit(state.copyWith(
            authenticated: isLoggedIn,
            unauthenticated: !isLoggedIn,
            failure: false,
          ));
        },
      );
    });
  }
}
