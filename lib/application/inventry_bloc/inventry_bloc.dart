import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/domain/inventrymodel/inventries_model/inventry.dart';
import 'package:techqrmaintance/domain/inventrymodel/inventry_repo.dart';

part 'inventry_event.dart';
part 'inventry_state.dart';
part 'inventry_bloc.freezed.dart';

@injectable
class InventryBloc extends Bloc<InventryEvent, InventryState> {
  final InventryRepo inventryRepo;
  InventryBloc(this.inventryRepo) : super(InventryState.initial()) {
    on<GetInventry>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
        ),
      );
      await inventryRepo.getInventries().then((inventries) => inventries.fold(
            (l) => emit(state.copyWith(
              isFailure: true,
              isLoading: false,
            )),
            (r) => emit(state.copyWith(
              isFailure: false,
              isLoading: false,
              inventry: r,
            )),
          ));
    });
  }
}
