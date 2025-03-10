import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/domain/organizationmodel/organization_model/organization_model/organization_model.dart';
import 'package:techqrmaintance/domain/organizationmodel/organization_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'oranization_event.dart';
part 'oranization_state.dart';
part 'oranization_bloc.freezed.dart';

@injectable
class OranizationBloc extends Bloc<OranizationEvent, OranizationState> {
  final OrganizationRepo organizationRepo;

  OranizationBloc(this.organizationRepo) : super(OranizationState.initial()) {
    on<GetOrganizationEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final orgs = await organizationRepo.getOrganizations();
      orgs.fold(
        (l) => emit(state.copyWith(
          isLoading: false,
          isFailure: true,
        )),
        (r) => emit(state.copyWith(
          organizationList: r,
          isLoading: false,
          isFailure: false,
        )),
      );
    });
  }
}
