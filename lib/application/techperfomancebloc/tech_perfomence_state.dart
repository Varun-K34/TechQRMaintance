part of 'tech_perfomence_bloc.dart';

@freezed
class TechPerfomenceState with _$TechPerfomenceState {
  const factory TechPerfomenceState({
    required TechPerfimenceModel techPerfimence,
    required bool isLoading,
    required bool isFailure,
  }) = _TechPerfomenceState;

  factory TechPerfomenceState.initial() {
    return TechPerfomenceState(
      techPerfimence: TechPerfimenceModel(),
      isLoading: false,
      isFailure: false,
    );
  }
}
