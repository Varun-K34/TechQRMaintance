// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/domain/core/getlocation/get_loc_repo.dart';

part 'get_location_event.dart';
part 'get_location_state.dart';
part 'get_location_bloc.freezed.dart';

@injectable
class GetLocationBloc extends Bloc<GetLocationEvent, GetLocationState> {
  final GetLocationRepo getLocationRepo;
  GetLocationBloc(this.getLocationRepo) : super(GetLocationState.initial()) {
    on<Getloc>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      await getLocationRepo.getLocation().then((loc) {
        loc.fold(
            (l) => emit(state.copyWith(
                  isFailure: true,
                  isLoading: false,
                )),
            (r) => emit(state.copyWith(
                  location: r,
                  isLoading: false,
                  isFailure: false,
                )));
      });
    });
  }
}
