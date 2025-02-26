part of 'get_location_bloc.dart';

@freezed
class GetLocationState with _$GetLocationState {
  const factory GetLocationState({
    required List<String> location,
    required bool isLoading,
    required bool isFailure,
  }) = _GetLocationState;

  factory GetLocationState.initial() {
    return GetLocationState(
      location: [],
      isLoading: false,
      isFailure: false,
    );
  }
}
