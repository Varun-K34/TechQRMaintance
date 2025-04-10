part of 'area_bloc.dart';

@freezed
class AreaState with _$AreaState {
  const factory AreaState({
    required List<AreaModelSaas> areaList,
    required bool isLoading,
    required bool isFailure,
  }) = _AreaState;
  factory AreaState.initial() {
    return AreaState(
      areaList: [],
      isLoading: false,
      isFailure: false,
    );
  }
}
