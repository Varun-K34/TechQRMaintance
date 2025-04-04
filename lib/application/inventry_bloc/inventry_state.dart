part of 'inventry_bloc.dart';

@freezed
class InventryState with _$InventryState {
  const factory InventryState({
    required bool isLoading,
    required bool isFailure,
    required List<Inventry> inventry,
  }) = _InventryState;

  factory InventryState.initial() {
    return InventryState(
      isLoading: false,
      isFailure: false,
      inventry: [],
    );
  }
}
