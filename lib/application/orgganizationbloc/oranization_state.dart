part of 'oranization_bloc.dart';

@freezed
class OranizationState with _$OranizationState {
  const factory OranizationState({
    required OrganizationModel organizationList,
    required bool isLoading,
    required bool isFailure,
  }) = _OranizationState;

  factory OranizationState.initial() {
    return OranizationState(
      organizationList: OrganizationModel(),
      isLoading: false,
      isFailure: false,
    );
  }
}
